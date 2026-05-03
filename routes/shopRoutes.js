// routes/shopRoutes.js — F1 Hub shop: list items, checkout, order history
//
// HOW THIS FILE WORKS (read this to your teacher):
// ------------------------------------------------
// This file handles all the shop-related HTTP endpoints.
// There are 4 routes:
//   1. GET  /api/shop/items        -> list all products (merch + tickets)
//   2. GET  /api/shop/items/:id    -> details of one product
//   3. POST /api/shop/checkout     -> place an order (login required)
//   4. GET  /api/shop/orders       -> see your past orders (login required)
//
// We use Promises (async/await) — NOT callbacks. The `db.query(...)`
// call returns a Promise that resolves to [rows, fields].
//
// DSA used here:
//   - Array        -> the cart array sent from the frontend
//   - Map          -> we use a Map to deduplicate cart items
//                     (key = item_id, value = quantity).
//                     Why? If the user adds the same item twice,
//                     we merge them into one line so the order
//                     table stays clean. This is the dedup pattern.
//
// All responses follow the same shape as fantasyRoutes.js:
//   { success: true/false, message: "...", data: ... }
// ------------------------------------------------

import { Router } from "express";
import db from "../config/db.js";
import requireAuth from "../middleware/auth.js";

const router = Router();

// ============================================================
// GET /api/shop/items — list all shop items
// Optional filter: ?type=merch  or  ?type=ticket
// ============================================================
router.get("/items", async (req, res) => {
  try {
    const { type } = req.query;

    // Build the query based on whether a type filter was passed.
    // We keep it simple — two separate queries, one with filter, one without.
    let rows;
    if (type === "merch" || type === "ticket") {
      const [result] = await db.query(
        `SELECT si.item_id, si.item_name, si.item_type, si.description,
                si.price, si.image_url, si.stock, si.meeting_key,
                m.meeting_name, m.country_name, m.date_start
         FROM Shop_item si
         LEFT JOIN Meeting m ON m.meeting_key = si.meeting_key
         WHERE si.item_type = ?
         ORDER BY si.item_id`,
        [type],
      );
      rows = result;
    } else {
      const [result] = await db.query(
        `SELECT si.item_id, si.item_name, si.item_type, si.description,
                si.price, si.image_url, si.stock, si.meeting_key,
                m.meeting_name, m.country_name, m.date_start
         FROM Shop_item si
         LEFT JOIN Meeting m ON m.meeting_key = si.meeting_key
         ORDER BY si.item_type, si.item_id`,
      );
      rows = result;
    }

    res.json({ success: true, data: rows });
  } catch (err) {
    console.error("Items error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

// ============================================================
// GET /api/shop/items/:id — single item details
// ============================================================
router.get("/items/:id", async (req, res) => {
  try {
    const item_id = parseInt(req.params.id, 10);
    if (isNaN(item_id)) {
      return res
        .status(400)
        .json({ success: false, message: "Invalid item id" });
    }

    const [rows] = await db.query(
      `SELECT si.item_id, si.item_name, si.item_type, si.description,
              si.price, si.image_url, si.stock, si.meeting_key,
              m.meeting_name, m.country_name, m.date_start
       FROM Shop_item si
       LEFT JOIN Meeting m ON m.meeting_key = si.meeting_key
       WHERE si.item_id = ?`,
      [item_id],
    );

    if (rows.length === 0) {
      return res
        .status(404)
        .json({ success: false, message: "Item not found" });
    }

    res.json({ success: true, data: rows[0] });
  } catch (err) {
    console.error("Item details error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

// ============================================================
// POST /api/shop/checkout — place an order (mock checkout)
// Expects body: { cart: [ { item_id, quantity }, ... ] }
// ============================================================
router.post("/checkout", requireAuth, async (req, res) => {
  try {
    const user_name = req.session.user_name;
    const { cart } = req.body;

    // Validate that cart is a non-empty array
    if (!Array.isArray(cart) || cart.length === 0) {
      return res
        .status(400)
        .json({ success: false, message: "Cart is empty" });
    }

    // ----------------------------------------------------------
    // DSA — using a Map to deduplicate cart items.
    // If the user accidentally sent the same item_id twice,
    // we merge the quantities into one line.
    // ----------------------------------------------------------
    const cartMap = new Map();
    for (const line of cart) {
      const id = parseInt(line.item_id, 10);
      const qty = parseInt(line.quantity, 10);

      // Skip any malformed line instead of failing the whole order
      if (isNaN(id) || isNaN(qty) || qty < 1) continue;

      // If this id already exists in the map, add to it; otherwise set it.
      const existing = cartMap.get(id) || 0;
      cartMap.set(id, existing + qty);
    }

    if (cartMap.size === 0) {
      return res
        .status(400)
        .json({ success: false, message: "No valid items in cart" });
    }

    // ----------------------------------------------------------
    // Look up the real price + stock of each item from the DB.
    // We do NOT trust the price the frontend sends — that would
    // let users change prices in DevTools. Always re-check on the server.
    // ----------------------------------------------------------
    const itemIds = Array.from(cartMap.keys()); // Map -> Array of ids

    const [items] = await db.query(
      `SELECT item_id, item_name, price, stock
       FROM Shop_item
       WHERE item_id IN (?)`,
      [itemIds],
    );

    if (items.length !== itemIds.length) {
      return res.status(400).json({
        success: false,
        message: "One or more items in your cart no longer exist",
      });
    }

    // Stock check + total calculation
    let total = 0;
    const orderLines = []; // array of [item_id, qty, price] tuples

    for (const item of items) {
      const qty = cartMap.get(item.item_id);
      if (qty > item.stock) {
        return res.status(400).json({
          success: false,
          message: `Not enough stock for "${item.item_name}". Only ${item.stock} left.`,
        });
      }
      total += Number(item.price) * qty;
      orderLines.push([item.item_id, qty, item.price]);
    }

    // ----------------------------------------------------------
    // Insert the order header first to get the order_id,
    // then insert all the line items.
    // (For a uni project this is fine — in production you'd
    //  wrap these in a transaction so a partial failure rolls back.)
    // ----------------------------------------------------------
    const [orderResult] = await db.query(
      `INSERT INTO Shop_order (user_name, total_amount)
       VALUES (?, ?)`,
      [user_name, total.toFixed(2)],
    );

    const order_id = orderResult.insertId;

    // Insert each line item
    for (const [item_id, qty, price] of orderLines) {
      await db.query(
        `INSERT INTO Shop_order_item (order_id, item_id, quantity, price_at_purchase)
         VALUES (?, ?, ?, ?)`,
        [order_id, item_id, qty, price],
      );

      // Reduce stock for this item
      await db.query(
        `UPDATE Shop_item SET stock = stock - ? WHERE item_id = ?`,
        [qty, item_id],
      );
    }

    res.json({
      success: true,
      message: "Order placed successfully",
      data: { order_id, total: total.toFixed(2) },
    });
  } catch (err) {
    console.error("Checkout error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

// ============================================================
// GET /api/shop/orders — current user's order history
// Returns each order with its line items grouped together.
// ============================================================
router.get("/orders", requireAuth, async (req, res) => {
  try {
    const user_name = req.session.user_name;

    // Get all orders for this user
    const [orders] = await db.query(
      `SELECT order_id, total_amount, status, created_at
       FROM Shop_order
       WHERE user_name = ?
       ORDER BY created_at DESC`,
      [user_name],
    );

    if (orders.length === 0) {
      return res.json({ success: true, data: [] });
    }

    // Get all line items for those orders in ONE query
    const orderIds = orders.map((o) => o.order_id);
    const [lines] = await db.query(
      `SELECT oi.order_id, oi.item_id, oi.quantity, oi.price_at_purchase,
              si.item_name, si.item_type, si.image_url
       FROM Shop_order_item oi
       JOIN Shop_item si ON si.item_id = oi.item_id
       WHERE oi.order_id IN (?)`,
      [orderIds],
    );

    // ----------------------------------------------------------
    // DSA — group line items under their order using a Map.
    // Key = order_id, Value = array of items.
    // This avoids a nested loop (O(n*m)).
    // ----------------------------------------------------------
    const linesByOrder = new Map();
    for (const line of lines) {
      if (!linesByOrder.has(line.order_id)) {
        linesByOrder.set(line.order_id, []);
      }
      linesByOrder.get(line.order_id).push(line);
    }

    // Attach the items array to each order
    const result = orders.map((o) => ({
      ...o,
      items: linesByOrder.get(o.order_id) || [],
    }));

    res.json({ success: true, data: result });
  } catch (err) {
    console.error("Orders error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

export default router;

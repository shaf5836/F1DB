import { Router } from "express";
import db from "../config/db.js";
import requireAuth from "../middleware/auth.js";
 
const router = Router();
 
router.get("/items", async (req, res) => {
  try {
    const { type } = req.query;
 
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
 
router.post("/checkout", requireAuth, async (req, res) => {
  try {
    const user_name = req.session.user_name;
    const { cart } = req.body;
 
    if (!Array.isArray(cart) || cart.length === 0) {
      return res
        .status(400)
        .json({ success: false, message: "Cart is empty" });
    }
 
    const cartMap = new Map();
    for (const line of cart) {
      const id = parseInt(line.item_id, 10);
      const qty = parseInt(line.quantity, 10);
 
      if (isNaN(id) || isNaN(qty) || qty < 1) continue;
 
      const existing = cartMap.get(id) || 0;
      cartMap.set(id, existing + qty);
    }
 
    if (cartMap.size === 0) {
      return res
        .status(400)
        .json({ success: false, message: "No valid items in cart" });
    }
 
    const itemIds = Array.from(cartMap.keys());
 
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
 
    let total = 0;
    const orderLines = [];
 
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
 
    const [orderResult] = await db.query(
      `INSERT INTO Shop_order (user_name, total_amount)
       VALUES (?, ?)`,
      [user_name, total.toFixed(2)],
    );
 
    const order_id = orderResult.insertId;
 
    for (const [item_id, qty, price] of orderLines) {
      await db.query(
        `INSERT INTO Shop_order_item (order_id, item_id, quantity, price_at_purchase)
         VALUES (?, ?, ?, ?)`,
        [order_id, item_id, qty, price],
      );
 
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
 
router.get("/orders", requireAuth, async (req, res) => {
  try {
    const user_name = req.session.user_name;
 
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
 
    const orderIds = orders.map((o) => o.order_id);
    const [lines] = await db.query(
      `SELECT oi.order_id, oi.item_id, oi.quantity, oi.price_at_purchase,
              si.item_name, si.item_type, si.image_url
       FROM Shop_order_item oi
       JOIN Shop_item si ON si.item_id = oi.item_id
       WHERE oi.order_id IN (?)`,
      [orderIds],
    );
 
    const linesByOrder = new Map();
    for (const line of lines) {
      if (!linesByOrder.has(line.order_id)) {
        linesByOrder.set(line.order_id, []);
      }
      linesByOrder.get(line.order_id).push(line);
    }
 
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

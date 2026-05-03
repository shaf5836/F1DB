import { Router } from "express";
import bcrypt from "bcrypt";
import db from "../config/db.js";

const router = Router();

// Signup -> Validate input → Check duplicate → Hash → Insert → Set session → Respond
router.post("/signup", async (req, res) => {
  try {
    const { user_name, password, favorite_driver_id, favorite_team_id } =
      req.body;

    if (!user_name || !password) {
      return res.status(400).json({
        success: false,
        message: "user_name and password are required",
      });
    }
    if (password.length < 6) {
      return res.status(400).json({
        success: false,
        message: "Password must be at least 6 characters",
      });
    }

    const [existing] = await db.query(
      "SELECT user_name FROM User WHERE user_name = ?",
      [user_name],
    );
    if (existing.length > 0) {
      return res
        .status(409)
        .json({ success: false, message: "Username already taken" });
    }

    const password_hash = await bcrypt.hash(password, 10);
    await db.query(
      `INSERT INTO User (user_name, password_hash, favorite_driver_id, favorite_team_id, fantasy_points, f_league_id)
             VALUES (?, ?, ?, ?, 0, 1)`,
      [
        user_name,
        password_hash,
        favorite_driver_id || null,
        favorite_team_id || null,
      ],
    );

    req.session.user_name = user_name;

    res
      .status(201)
      .json({ success: true, message: "Account created", data: { user_name } });
  } catch (err) {
    console.error("Signup error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

// POST /api/auth/login
// POST — client sends credentials, server verifies and responds

router.post("/login", async (req, res) => {
  try {
    const { user_name, password } = req.body;

    if (!user_name || !password) {
      return res.status(400).json({
        success: false,
        message: "user_name and password are required",
      });
    }

    const [rows] = await db.query(
      "SELECT user_name, password_hash FROM User WHERE user_name = ?",
      [user_name],
    );

    if (rows.length === 0) {
      return res
        .status(401)
        .json({ success: false, message: "Invalid credentials" });
    }

    const valid = await bcrypt.compare(password, rows[0].password_hash);
    if (!valid) {
      return res
        .status(401)
        .json({ success: false, message: "Invalid credentials" });
    }

    req.session.user_name = rows[0].user_name;
    res.json({
      success: true,
      message: "Logged in",
      data: { user_name: rows[0].user_name },
    });
  } catch (err) {
    console.error("Login error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

// Post -> Changes state,  DELETE "deletes resources from the server" — logout is a POST because it acts on a session, not a named resource
router.post("/logout", (req, res) => {
  if (!req.session.user_name) {
    return res.json({ success: true, message: "Already logged out" });
  }
  req.session.destroy((err) => {
    if (err) {
      return res.status(500).json({ success: false, message: err.message });
    }

    res.clearCookie("connect.sid");
    res.json({ success: true, message: "Logged out" });
  });
});

router.get("/me", async (req, res) => {
  try {
    if (!req.session || !req.session.user_name) {
      return res.status(401).json({ success: false, message: "Not logged in" });
    }

    const [rows] = await db.query(
      `SELECT user_name, favorite_driver_id, favorite_team_id, fantasy_points, position_current
             FROM User WHERE user_name = ?`,
      [req.session.user_name],
    );

    if (rows.length === 0) {
      req.session.destroy(() => {});
      return res
        .status(401)
        .json({ success: false, message: "User no longer exists" });
    }

    res.json({ success: true, data: rows[0] });
  } catch (err) {
    console.error("Me error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

export default router;

import { Router } from "express";
import pool from "../config/db.js";

const router = Router();
//  Joining 3 tables to fetch radios with drivers and team info.
// using left join so the radio still appears even if the driver and team data is missing
// handing the edge case with the length check
// Using Promises with async, await is  more readable and easier to handle errors compared to callbacks
// async-> asynchronous, can use await inside it. await pauses execution until the database Promise resolves.
// Pool -> using the pre fetched connection , instead of opening fresh everytime.
// Browser -> HTTP -> Express -> Router -> DB -> JSON -> UI
router.get("/", async (req, res) => {
  try {
    const [radios] = await pool.query(` 
      
      SELECT 
        drr.driver_id,
        d.full_name AS driver_name,
        t.team_name,
        drr.driver_radio_recording_url AS url
      FROM driver_radio_recording_url drr
      LEFT JOIN driver d ON drr.driver_id = d.driver_id
      LEFT JOIN team t ON d.t_team_id = t.team_id
      ORDER BY d.full_name ASC
    `);

    if (radios.length === 0) {
      return res.json({ success: true, data: [] });
    }

    res.json({ success: true, data: radios });
  } catch (err) {
    console.error("Radio API error:", err);
    // Exposes error for debugging purposes.
    res.status(500).json({ success: false, message: err.message });
  }
});

export default router;

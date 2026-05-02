import { Router } from 'express';
import pool from '../config/db.js';

const router = Router();

/* Using get function to fetch F1 radio messages per driver */
router.get('/', async (req, res) => {
  try {
    // Fetching one radio URL per driver, joined with driver and team info
    const [radios] = await pool.query(`
      SELECT 
        drr.driver_id,
        d.full_name AS driver_name,
        t.team_name,
        drr.driver_radio_recording_url AS url
      FROM driver_radio_recording_url drr
      JOIN driver d ON drr.driver_id = d.driver_id
      JOIN team t ON d.t_team_id = t.team_id
      ORDER BY d.full_name ASC
    `);

    if (radios.length === 0) {
      return res.json({ success: true, data: [] });
    }

    res.json({ success: true, data: radios });
  } catch (err) {
    console.error('Radio API error:', err);
    res.status(500).json({ success: false, message: err.message });
  }
});

export default router;
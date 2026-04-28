import { Router } from 'express';
import pool from '../config/db.js';

const router = Router();

router.get('/', async (req, res) => {
  try {
    const [rows] = await pool.query(
      `select t.position_current, 
      t.team_name, 
      t.points_current 
      from team as t 
      order by 
      t.points_current desc, 
      position_current asc;`
    );
    res.json({ success: true, data: rows });
  } catch (err) {
    console.error('Driver standings error:', err);
    res.status(500).json({ success: false, message: err.message });
  }
});

export default router;

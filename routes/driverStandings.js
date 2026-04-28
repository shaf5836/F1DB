import { Router } from 'express';
import pool from '../config/db.js';

const router = Router();

router.get('/', async (req, res) => {
  try {
    const [rows] = await pool.query(
      `select d.position_current, 
      d.full_name, 
      d.name_acronym, 
      t.team_name, 
      d.points_current 
      from driver as d left join team as t on d.t_team_id=t.team_id order by d.points_current desc, 
      position_current asc;`
    );
    res.json({ success: true, data: rows });
  } catch (err) {
    console.error('Driver standings error:', err);
    res.status(500).json({ success: false, message: err.message });
  }
});

export default router;

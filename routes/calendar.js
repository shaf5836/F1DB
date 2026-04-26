import { Router } from 'express';
import pool from '../config/db.js';

const router = Router();

/* Using get function to fetch api  */
router.get('/', async (req, res) => {
  try {
    const year = req.query.year || new Date().getFullYear();

    // Fetching all meetings/grandprix for the selected year
    const [meetings] = await pool.query(
      `SELECT
         m.meeting_key,
         m.meeting_name,
         m.circuit_short_name,
         m.country_name,
         m.country_code,
         m.location,
         m.date_start,
         m.date_end,
         m.ticket
       FROM Meeting m
       WHERE m.year = ?
       ORDER BY m.date_start ASC`,
      [year]
    );

    // fetching all sessions for a specific grandprix/meeting to address to show the dates and year in calendar data
    if (meetings.length === 0) {
      return res.json({ success: true, year, data: [] });
    }

    const meetingKeys = meetings.map(m => m.meeting_key);
    const placeholders = meetingKeys.map(() => '?').join(',');

    const [sessions] = await pool.query(
      `SELECT
         s.session_key,
         s.session_name,
         s.session_type,
         s.date_start,
         s.date_end,
         s.meeting_key
       FROM Session s
       WHERE s.meeting_key IN (${placeholders})
       ORDER BY s.date_start ASC`,
      meetingKeys
    );

    // Grouping sessions under a certain grandprix, every grand prix is addressed as race and a grand prix describes all the sessions in a qualifying [shafkat]
    const sessionMap = {};
    for (const s of sessions) {
      if (!sessionMap[s.meeting_key]) sessionMap[s.meeting_key] = [];
      sessionMap[s.meeting_key].push(s);
    }

    const data = meetings.map(m => ({
      ...m,
      sessions: sessionMap[m.meeting_key] || [],
    }));

    res.json({ success: true, year, data });
  } catch (err) {
    console.error('Calendar error:', err);
    res.status(500).json({ success: false, message: err.message }); //sending backend error code [shafkat]
  }
});

export default router;

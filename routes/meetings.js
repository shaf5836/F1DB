import { Router } from "express";
import db from '../config/db.js';

const router = Router();

// Fetching all the meetings/grand prix weekends for a single year
router.get('/', async (req, res) => {
    const year = req.query.year || 2024;
    try {
        const [rows] = await db.query(
            `SELECT
            meeting_key,
            meeting_name,
            circuit_short_name,
            circuit_type,
            country_name,
            country_code,
            location,
            year,
            date_start,
            date_end,
            ticket
            FROM Meeting
            WHERE year = ?
            ORDER BY date_start ASC`,
            [year]
        );
        res.json({ success: true, data: rows });
    } catch (err) {
        console.error('Error fetching meetings:', err);
        res.status(500).json({ success: false, message: err.message }); //sending backend error code [shafkat]
    }
});

// Getting all the details for a Meeting/Grand prix weekend. This includes all session detail for all Meetings [shafkat]
router.get('/:meetingKey', async (req, res) => {
  const { meetingKey } = req.params;
  try {
    const [[meeting]] = await db.query(
      `SELECT * FROM Meeting WHERE meeting_key = ?`,
      [meetingKey]
    );

    if (!meeting) {
      return res.status(404).json({ success: false, message: 'Meeting not found.' });
    }

    // Fetching all sessions belonging to this meeting [shafkat]
    const [sessions] = await db.query(
      `SELECT session_key, session_name, session_type, date_start, date_end
       FROM Session
       WHERE meeting_key = ?
       ORDER BY date_start ASC`,
      [meetingKey]
    );

    res.json({ success: true, data: { ...meeting, sessions } });
  } catch (err) {
    console.error('Error fetching meeting details:', err.message);
    res.status(500).json({ success: false, message: 'Failed to fetch meeting details.' });
  }
});

// Fetching all driver results of a session in a meeting [shafkat]
router.get('/:meetingKey/sessions/:sessionKey/results', async (req, res) => {
  const { sessionKey } = req.params;
  try {
    const [rows] = await db.query(
      `SELECT
         sr.position,
         sr.points,
         sr.number_of_laps,
         sr.duration,
         sr.gap_to_the_leader,
         sr.dnf,
         sr.dns,
         sr.dsq,
         d.driver_id,
         d.name_acronym,
         d.first_name,
         d.last_name,
         d.driver_number,
         d.country_code   AS driver_country,
         t.team_name,
         t.team_colour
       FROM Session_result sr
       JOIN Driver d  ON sr.driver_id  = d.driver_id
       LEFT JOIN Team t ON d.t_team_id = t.team_id
       WHERE sr.session_key = ?
       ORDER BY
         CASE WHEN sr.dnf = 1 OR sr.dns = 1 OR sr.dsq = 1 THEN 1 ELSE 0 END ASC,
         sr.position ASC`,
      [sessionKey]
    );
    res.json({ success: true, data: rows });
  } catch (err) {
    console.error('Error fetching session results:', err.message);
    res.status(500).json({ success: false, message: 'Failed to fetch results.' });
  }
});
export default router;
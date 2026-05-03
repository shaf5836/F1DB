import { Router } from "express";
import db from '../config/db.js';

const router = Router();

router.get('/session/:sessionKey', async (req, res) => {
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
                d.country_code,
                t.team_name,
                t.team_colour
                FROM Session_result sr
                JOIN Driver d ON sr.driver_id = d.driver_id
                LEFT JOIN Team t ON d.t_team_id = t.team_id
                WHERE sr.session_key = ?
                ORDER BY
                CASE WHEN sr.dnf = 1 OR sr.dns = 1 OR sr.dsq = 1 THEN 1 ELSE 0 END ASC,
                sr.position ASC
                `,
            [sessionKey]
        );
        res.json({ success: true, data: rows });
    } catch (err) {
        console.error('results error:', err);
        res.status(500).json({ success: false, message: err.message });
    }
});

export default router;
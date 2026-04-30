import { Router } from "express";
import db from '../config/db.js';

const router = Router();

// Getting the latest race from db [ shafkat]

router.get('/', async (req, res) => {
    try {
        const [sessions] = await db.query(
            `SELECT
            s.session_key,
            s.session_name,
            s.date_start,
            s.date_end,
            m.meeting_name,
            m.circuit_short_name,
            m.country_name,
            m.country_code,
            m.location,
            m.year
            FROM Session s
            JOIN Meeting m ON s.meeting_key = m.meeting_key
            WHERE s.session_type = 'Race'
            AND s.date_end <= NOW()
            ORDER BY s.date_end DESC
            LIMIT 1`
        );

        if(sessions.length===0){
            return res.json({success: true, message:"No race was found"});
        }

        const session = sessions[0];

        //fetching the top 3 driver positions for the last race

        const[podium] = await db.query(
            `SELECT
            sr.position,
            sr.points,
            sr.gap_to_the_leader,
            sr.number_of_laps,
            d.full_name,
            d.name_acronym,
            d.driver_number,
            d.country_code,
            t.team_name,
            t.team_colour
            FROM Session_result sr
            JOIN Driver d ON sr.driver_id = d.driver_id
            LEFT JOIN Team t ON d.t_team_id = t.team_id
            WHERE sr.session_key = ?
            AND sr.dnf = 0
            AND sr.dns = 0
            AND sr.dsq = 0
            AND sr.position <= 3
            ORDER BY sr.position ASC`,
            [session.session_key]
        );

        const[results] = await db.query(
            `SELECT
            sr.position,
            sr.points,
            sr.gap_to_the_leader,
            sr.number_of_laps,
            sr.dnf,
            sr.dns,
            sr.dsq,
            d.full_name,
            d.name_acronym,
            d.driver_number,
            d.country_code,
            t.team_name,
            t.team_colour
            FROM Session_result sr
            JOIN Driver d ON sr.driver_id = d.driver_id
            LEFT JOIN Team t ON d.t_team_id = t.team_id
            WHERE sr.session_key = ?
            ORDER BY sr.position ASC`,
            [session.session_key]
        );
        res.json({
            success:true,
            data:{
                session,podium,results,
            },
        });
    }catch(err){
        console.error('LatestRace error',err);
        res.status(500).json({success:false, message:err.message});
    }
});

export default router;
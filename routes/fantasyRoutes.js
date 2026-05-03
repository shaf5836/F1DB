// routes/fantasyRoutes.js — fantasy pick, leaderboard, points calculation
import { Router } from "express";
import db from "../config/db.js";
import requireAuth from "../middleware/auth.js";

const router = Router();

// ============================================================
// POST /api/fantasy/pick — submit or update pick for a race
// ============================================================
router.post("/pick", requireAuth, async (req, res) => {
  try {
    const user_name = req.session.user_name;
    const { meeting_key, driver1_id, driver2_id, team_id, captain_driver_id } =
      req.body;

    if (
      !meeting_key ||
      !driver1_id ||
      !driver2_id ||
      !team_id ||
      !captain_driver_id
    ) {
      return res.status(400).json({
        success: false,
        message:
          "meeting_key, driver1_id, driver2_id, team_id, captain_driver_id are required",
      });
    }
    if (driver1_id === driver2_id) {
      return res.status(400).json({
        success: false,
        message: "driver1 and driver2 must be different",
      });
    }
    if (captain_driver_id !== driver1_id && captain_driver_id !== driver2_id) {
      return res.status(400).json({
        success: false,
        message: "captain must be driver1 or driver2",
      });
    }
    const [d1] = await db.query(
      "SELECT t_team_id FROM Driver WHERE driver_id = ?",
      [driver1_id],
    );
    const [d2] = await db.query(
      "SELECT t_team_id FROM Driver WHERE driver_id = ?",
      [driver2_id],
    );
    if (d1[0]?.t_team_id === d2[0]?.t_team_id) {
      return res
        .status(400)
        .json({
          success: false,
          message: "Drivers must be from different teams",
        });
    }

    // Check if pick is already locked
    const [existing] = await db.query(
      "SELECT locked FROM Fantasy_pick WHERE user_name = ? AND meeting_key = ?",
      [user_name, meeting_key],
    );
    if (existing.length > 0 && existing[0].locked === 1) {
      return res.status(403).json({
        success: false,
        message: "Pick is locked, race has started",
      });
    }

    await db.query(
      `INSERT INTO Fantasy_pick (user_name, meeting_key, driver1_id, driver2_id, team_id, captain_driver_id)
             VALUES (?, ?, ?, ?, ?, ?)
             ON DUPLICATE KEY UPDATE
                driver1_id = VALUES(driver1_id),
                driver2_id = VALUES(driver2_id),
                team_id = VALUES(team_id),
                captain_driver_id = VALUES(captain_driver_id)`,
      [
        user_name,
        meeting_key,
        driver1_id,
        driver2_id,
        team_id,
        captain_driver_id,
      ],
    );

    res.json({ success: true, message: "Pick saved" });
  } catch (err) {
    console.error("Pick error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

// ============================================================
// GET /api/fantasy/my-pick/:meeting_key — fetch user's pick
// ============================================================
router.get("/my-pick/:meeting_key", requireAuth, async (req, res) => {
  try {
    const user_name = req.session.user_name;
    const meeting_key = parseInt(req.params.meeting_key, 10);

    if (isNaN(meeting_key)) {
      return res
        .status(400)
        .json({ success: false, message: "Invalid meeting_key" });
    }

    const [rows] = await db.query(
      `SELECT fp.user_name, fp.meeting_key, fp.driver1_id, fp.driver2_id, fp.team_id,
                    fp.captain_driver_id, fp.points_earned, fp.locked,
                    d1.full_name AS driver1_name, d2.full_name AS driver2_name,
                    t.team_name
             FROM Fantasy_pick fp
             JOIN Driver d1 ON d1.driver_id = fp.driver1_id
             JOIN Driver d2 ON d2.driver_id = fp.driver2_id
             JOIN Team t ON t.team_id = fp.team_id
             WHERE fp.user_name = ? AND fp.meeting_key = ?`,
      [user_name, meeting_key],
    );

    if (rows.length === 0) {
      return res.json({
        success: true,
        data: null,
        message: "No pick yet for this race",
      });
    }

    res.json({ success: true, data: rows[0] });
  } catch (err) {
    console.error("My-pick error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

// ============================================================
// GET /api/fantasy/next-race — next upcoming meeting
// ============================================================
router.get("/next-race", async (req, res) => {
  try {
    const [rows] = await db.query(
      `SELECT meeting_key, meeting_name, country_name, location, date_start, date_end
             FROM Meeting
             WHERE date_start > NOW()
             ORDER BY date_start ASC
             LIMIT 1`,
    );

    if (rows.length === 0) {
      // Season is over — return the most recent race instead
      const [fallback] = await db.query(
        `SELECT meeting_key, meeting_name, country_name, location, date_start, date_end
                 FROM Meeting
                 ORDER BY date_start DESC
                 LIMIT 1`,
      );
      return res.json({
        success: true,
        data: fallback[0] || null,
        message: "Season finished, showing most recent race",
      });
    }

    res.json({ success: true, data: rows[0] });
  } catch (err) {
    console.error("Next-race error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

router.get("/options", async (req, res) => {
  try {
    const [drivers] = await db.query(
      `SELECT d.driver_id, d.full_name, d.name_acronym, d.t_team_id, t.team_name
             FROM Driver d
             LEFT JOIN Team t ON t.team_id = d.t_team_id
             ORDER BY d.full_name`,
    );
    const [teams] = await db.query(
      `SELECT team_id, team_name, team_colour
             FROM Team
             ORDER BY team_name`,
    );
    res.json({
      success: true,
      data: { drivers, teams },
    });
  } catch (err) {
    console.error("Options error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

// ============================================================
// GET /api/fantasy/leaderboard — top 100 by fantasy_points
// ============================================================
router.get("/leaderboard", async (req, res) => {
  try {
    const [rows] = await db.query(
      `SELECT u.user_name, u.fantasy_points, u.position_current
             FROM User u
             WHERE EXISTS (SELECT 1 FROM Fantasy_pick fp WHERE fp.user_name = u.user_name)
             ORDER BY u.fantasy_points DESC
             LIMIT 100`,
    );
    res.json({ success: true, data: rows });
  } catch (err) {
    console.error("Leaderboard error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

// ============================================================
// POST /api/fantasy/admin/calculate-points/:meeting_key
// THE BIG ONE — calculates and assigns points for a finished race
// Captain gets 2x points (so we add their base points one extra time)
// ============================================================
router.post("/admin/calculate-points/:meeting_key", async (req, res) => {
  try {
    const meeting_key = parseInt(req.params.meeting_key, 10);
    if (isNaN(meeting_key)) {
      return res
        .status(400)
        .json({ success: false, message: "Invalid meeting_key" });
    }

    // Find the Race session for this meeting
    const [sessions] = await db.query(
      `SELECT session_key FROM Session
             WHERE meeting_key = ? AND session_type = 'Race'
             LIMIT 1`,
      [meeting_key],
    );

    if (sessions.length === 0) {
      return res.status(404).json({
        success: false,
        message: "No Race session found for this meeting",
      });
    }
    const session_key = sessions[0].session_key;

    // Get all picks for this meeting
    const [picks] = await db.query(
      `SELECT user_name, driver1_id, driver2_id, team_id, captain_driver_id
             FROM Fantasy_pick
             WHERE meeting_key = ?`,
      [meeting_key],
    );

    if (picks.length === 0) {
      return res.json({
        success: true,
        message: "No picks to calculate for this race",
        data: { picks_processed: 0 },
      });
    }

    let processed = 0;

    // Calculate points for each pick
    for (const pick of picks) {
      // Driver 1 points
      const [d1Result] = await db.query(
        `SELECT COALESCE(points, 0) AS points FROM Session_result
                 WHERE session_key = ? AND driver_id = ?`,
        [session_key, pick.driver1_id],
      );
      const d1_pts = d1Result.length > 0 ? d1Result[0].points : 0;

      // Driver 2 points
      const [d2Result] = await db.query(
        `SELECT COALESCE(points, 0) AS points FROM Session_result
                 WHERE session_key = ? AND driver_id = ?`,
        [session_key, pick.driver2_id],
      );
      const d2_pts = d2Result.length > 0 ? d2Result[0].points : 0;

      // Team points = sum of points for all drivers on that team
      const [teamResult] = await db.query(
        `SELECT COALESCE(SUM(sr.points), 0) AS team_pts
                 FROM Session_result sr
                 JOIN Driver d ON d.driver_id = sr.driver_id
                 WHERE sr.session_key = ? AND d.t_team_id = ?`,
        [session_key, pick.team_id],
      );
      const team_pts = teamResult[0].team_pts;

      // Captain bonus — captain's base points are already counted once,
      // we add them ONCE MORE to give a 2x effect
      const captain_pts =
        pick.captain_driver_id === pick.driver1_id ? d1_pts : d2_pts;

      const total =
        Number(d1_pts) +
        Number(d2_pts) +
        Number(team_pts) +
        Number(captain_pts);

      // Update the pick row
      await db.query(
        `UPDATE Fantasy_pick
                 SET points_earned = ?, locked = 1
                 WHERE user_name = ? AND meeting_key = ?`,
        [total, pick.user_name, meeting_key],
      );

      processed++;
    }

    // Update each user's fantasy_points to the SUM of all their picks
    await db.query(
      `UPDATE User u
             SET u.fantasy_points = (
                 SELECT COALESCE(SUM(fp.points_earned), 0)
                 FROM Fantasy_pick fp
                 WHERE fp.user_name = u.user_name
             )`,
    );

    // Recompute leaderboard positions based on new fantasy_points
    const [ranked] = await db.query(
      `SELECT user_name FROM User
             WHERE EXISTS (SELECT 1 FROM Fantasy_pick fp WHERE fp.user_name = User.user_name)
             ORDER BY fantasy_points DESC`,
    );
    for (let i = 0; i < ranked.length; i++) {
      await db.query(
        "UPDATE User SET position_current = ? WHERE user_name = ?",
        [i + 1, ranked[i].user_name],
      );
    }

    res.json({
      success: true,
      message: `Points calculated for ${processed} picks`,
      data: { picks_processed: processed, meeting_key },
    });
  } catch (err) {
    console.error("Calculate-points error:", err);
    res.status(500).json({ success: false, message: err.message });
  }
});

export default router;

import { Router } from "express";
import db from "../config/db.js";

const router= Router();

// Getting all the data from the drivers table including the team color and team name of each driver[shafkat]
router.get('/drivers', async (req,res)=> {
  try{
    const[rows] = await db.query(`SELECT
        d.driver_id,
        d.name_acronym,
        d.first_name,
        d.last_name,
        d.full_name,
        d.country_code,
        d.driver_number,
        d.points_current,
        d.position_current,
        t.team_name,
        t.team_colour
        FROM Driver d
        LEFT JOIN Team t ON d.t_team_id = t.team_id
        ORDER BY d.position_current ASC, d.last_name ASC`
      );
      res.json({success:true, data:rows});
  }catch(err){
    console.error('drivers error in gridCompare',err);
    res.status(500).json({success:false,message:"failed to fetch drivers for gridCompare"})
  }
})

router.get('/overtakes', async (req,res)=>{
  const{driver1,driver2} = req.query;

  if(!driver1 || !driver2){
    return res.status(400).json({success:false, message:"driver 1 and driver 2 query is needed to be inserted"});
  }

  try{

    // I am checking how many times each of the two drivers overtake someone[shafkat]
    const[madeRows] = await db.query(`
      SELECT
        o.overtaking_driver_id AS driver_id,
        m.meeting_name,
        m.meeting_key,
        m.country_code,
        COUNT(*) AS overtakes_made
        FROM Overtake o
        JOIN Session s  ON o.session_key = s.session_key
        JOIN Meeting m  ON s.meeting_key = m.meeting_key
        WHERE o.overtaking_driver_id IN (?, ?)
        AND s.session_type = 'Race'
        GROUP BY o.overtaking_driver_id, m.meeting_key, m.meeting_name, m.country_code
        ORDER BY m.meeting_key ASC
      `,[driver1,driver2]);

      // Checking How many times two of the compared driver is being overtaken by someone[shafkat]
    const[receivedRows] = await db.query(`
      SELECT
        o.overtaken_driver_id AS driver_id,
        m.meeting_name,
        m.meeting_key,
        m.country_code,
        COUNT(*) AS overtakes_received
        FROM Overtake o
        JOIN Session s  ON o.session_key = s.session_key
        JOIN Meeting m  ON s.meeting_key = m.meeting_key
        WHERE o.overtaken_driver_id IN (?, ?)
        AND s.session_type = 'Race'
        GROUP BY o.overtaken_driver_id, m.meeting_key, m.meeting_name, m.country_code
        ORDER BY m.meeting_key ASC
      `, [driver1, driver2]);
    
    // Getting all driver details of the two selected drivers , I am summing all the overtakes a driver has done and how many times a driver has been overtaken.
    // using left join to include all drivers even if they have no overtakes or overtaken and using coalesce to set no overtakes to 0/null [ shafkat]
    const[totalsRows] = await db.query(`
      SELECT
        d.driver_id,
        d.full_name,
        d.name_acronym,
        t.team_colour,
        COALESCE(made.total_made, 0) AS total_made,
        COALESCE(received.total_received, 0) AS total_received
        FROM Driver d
        LEFT JOIN Team t ON d.t_team_id = t.team_id
        LEFT JOIN ( 
        SELECT overtaking_driver_id AS driver_id, COUNT(*) AS total_made
        FROM Overtake o
        JOIN Session s ON o.session_key = s.session_key
        WHERE o.overtaking_driver_id IN (?, ?) AND s.session_type = 'Race'
        GROUP BY overtaking_driver_id
      ) made ON d.driver_id = made.driver_id
        LEFT JOIN (
        SELECT overtaken_driver_id AS driver_id, COUNT(*) AS total_received
        FROM Overtake o
        JOIN Session s ON o.session_key = s.session_key
        WHERE o.overtaken_driver_id IN (?, ?) AND s.session_type = 'Race'
        GROUP BY overtaken_driver_id
      ) received ON d.driver_id = received.driver_id
        WHERE d.driver_id IN (?, ?)
    `,[driver1,driver2,driver1,driver2,driver1,driver2]);

    // Comparing all data head to head of each driver
    const[h2hRows] = await db.query(`
      SELECT
        o.overtaking_driver_id,
        o.overtaken_driver_id,
        o.session_key,
        o.lap,
        o.position,
        o.date,
        m.meeting_name,
        m.country_code
        FROM Overtake o
        JOIN Session s  ON o.session_key = s.session_key
        JOIN Meeting m  ON s.meeting_key = m.meeting_key
        WHERE (
        (o.overtaking_driver_id = ? AND o.overtaken_driver_id = ?)
        OR
        (o.overtaking_driver_id = ? AND o.overtaken_driver_id = ?)
      )
        AND s.session_type = 'Race'
        ORDER BY o.date ASC
      `, [driver1, driver2, driver2, driver1]); // adding both sequence but I will later change it to one to make it simpler

    const [avgPositionRows] = await db.query(`
      SELECT
        o.overtaking_driver_id AS driver_id,
        ROUND(AVG(o.position), 1) AS avg_position_gained,
        MIN(o.position)           AS best_position_overtake,
        MAX(o.position)           AS latest_position_overtake
      FROM Overtake o
      JOIN Session s ON o.session_key = s.session_key
      WHERE o.overtaking_driver_id IN (?, ?)
        AND s.session_type = 'Race'
      GROUP BY o.overtaking_driver_id
    `, [driver1, driver2]);
  
    res.json({
      success: true,
      data: {
        madePerRace:    madeRows,
        receivedPerRace: receivedRows,
        totals:         totalsRows,
        headToHead:     h2hRows,
        avgPosition:    avgPositionRows,
      }
    });
  }catch(err){
    console.error(' gridCompare overtakes error',err);
    res.status(500).json({ success: false, message: 'Failed to fetch overtake data in gridCompare' });
  }
})


// Fetching data for the points details of gridCompare [shafkat]
router.get('/points', async (req, res) => {
  const { driver1, driver2 } = req.query;

  if (!driver1 || !driver2) {
    return res.status(400).json({
      success: false,
      message: 'driver1 and driver2 query are required',
    });
  }

  try {
    // getting per session points for each of the two drivers[shafkat]
    const [sessionRows] = await db.query(`
      SELECT
        s.session_key,
        s.session_name,
        s.session_type,
        m.meeting_key,
        m.meeting_name,
        m.country_code,
        s.date_start,
        COALESCE(sr1.points, 0) AS d1_points,
        COALESCE(sr2.points, 0) AS d2_points,
        sr1.position AS d1_position,
        sr2.position AS d2_position
        FROM Session s
        JOIN Meeting m
        ON s.meeting_key = m.meeting_key
        LEFT JOIN Session_result sr1
        ON s.session_key = sr1.session_key AND sr1.driver_id = ?
        LEFT JOIN Session_result sr2
        ON s.session_key = sr2.session_key AND sr2.driver_id = ?
        WHERE sr1.driver_id IS NOT NULL
         OR sr2.driver_id IS NOT NULL
        ORDER BY s.date_start ASC, s.session_key ASC
      `, [driver1, driver2]);


    // Gettings total points for two of the drivers
    const [totalsRows] = await db.query(`
      SELECT
        d.driver_id,
        d.name_acronym,
        d.full_name,
        t.team_colour,
        COALESCE(SUM(sr.points), 0) AS total_points,
        COUNT(CASE WHEN sr.points > 0 THEN 1 END) AS scoring_sessions,
        COUNT(sr.session_key) AS total_sessions,
        MIN(sr.position) AS best_finish,
        COUNT(CASE WHEN sr.position = 1 THEN 1 END) AS wins,
        COUNT(CASE WHEN sr.position <= 3 THEN 1 END) AS podiums
        FROM Driver d
        LEFT JOIN Team t
        ON d.t_team_id = t.team_id
        LEFT JOIN Session_result sr
        ON d.driver_id = sr.driver_id
        WHERE d.driver_id IN (?, ?)
        GROUP BY d.driver_id, d.name_acronym, d.full_name, t.team_colour
      `, [driver1, driver2]);

    // summing the total current points of the drivers from the data extracted from the db [shafkat]
    let cumul1 = 0;
    let cumul2 = 0;

    const sessions = sessionRows.map(row => {
      cumul1 += Number(row.d1_points);
      cumul2 += Number(row.d2_points);
      return {
        session_key:  row.session_key,
        session_name: row.session_name,
        session_type: row.session_type,
        meeting_key:  row.meeting_key,
        meeting_name: row.meeting_name,
        country_code: row.country_code,
        date_start:   row.date_start,
        d1_points:    Number(row.d1_points),
        d2_points:    Number(row.d2_points),
        d1_position:  row.d1_position,
        d2_position:  row.d2_position,
        d1_cumul:     cumul1,
        d2_cumul:     cumul2,
      };
    });
    res.json({
      success: true,
      data: {
        sessions,
        totals: totalsRows,
      },
    });
  } catch (err) {
    console.error('[gridCompare] /points error:', err);
    res.status(500).json({ success: false, message: 'Failed to fetch points data' });
  }
});


export default router;
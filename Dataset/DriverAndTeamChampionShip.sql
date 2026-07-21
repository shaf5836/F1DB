-- ============================================================
-- 1. Initialize Starting Values
-- ============================================================
UPDATE Driver SET points_start = 0;
UPDATE Team SET points_start = 0;

-- ============================================================
-- 2. Calculate and Update Current Points for Drivers
-- ============================================================
UPDATE Driver d
INNER JOIN (
    SELECT driver_id, SUM(points) AS total_points
    FROM Session_result
    GROUP BY driver_id
) AS results ON d.driver_id = results.driver_id
SET d.points_current = results.total_points;

-- ============================================================
-- 3. Calculate and Update Current Points for Teams
-- ============================================================
UPDATE Team t
INNER JOIN (
    SELECT d.t_team_id, SUM(r.points) AS total_points
    FROM Session_result r
    INNER JOIN Driver d ON r.driver_id = d.driver_id
    WHERE d.t_team_id IS NOT NULL
    GROUP BY d.t_team_id
) AS team_results ON t.team_id = team_results.t_team_id
SET t.points_current = team_results.total_points;

-- ============================================================
-- 4. Calculate and Update Current Positions for Drivers
-- (Tie-breaker: Alphabetical by Last Name, then First Name)
-- ============================================================
UPDATE Driver d
INNER JOIN (
    SELECT driver_id, 
           RANK() OVER (ORDER BY points_current DESC, last_name ASC, first_name ASC) as rnk
    FROM Driver
) AS ranked_drivers ON d.driver_id = ranked_drivers.driver_id
SET d.position_current = ranked_drivers.rnk;

-- ============================================================
-- 5. Calculate and Update Current Positions for Teams
-- (Tie-breaker: Alphabetical by Team Name)
-- ============================================================
UPDATE Team t
INNER JOIN (
    SELECT team_id, 
           RANK() OVER (ORDER BY points_current DESC, team_name ASC) as rnk
    FROM Team
) AS ranked_teams ON t.team_id = ranked_teams.team_id
SET t.position_current = ranked_teams.rnk;
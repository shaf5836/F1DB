-- ============================================================
-- Insertion for Overtake Table (2024 Rounds 1 & 2)
-- ============================================================

-- Bahrain Grand Prix (Session Key: 105)
-- 1. Sergio Perez (2) overtakes Charles Leclerc (3) on Lap 7 for 2nd position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (2, 3, 105, 7, 2, '2024-03-02 18:12:00');

-- 2. Carlos Sainz (4) overtakes Charles Leclerc (3) on Lap 11 for 3rd position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (4, 3, 105, 11, 3, '2024-03-02 18:18:00');

-- Saudi Arabian Grand Prix (Session Key: 205)
-- 3. Sergio Perez (2) overtakes Charles Leclerc (3) on Lap 4 for 2nd position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (2, 3, 205, 4, 2, '2024-03-09 20:07:00');

-- 4. Charles Leclerc (3) overtakes Lewis Hamilton (9) on Lap 15 for 4th position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (3, 9, 205, 15, 4, '2024-03-09 20:25:00');

-- 5. Oliver Bearman (21) overtakes Nico Hülkenberg (13) on Lap 21 for 9th position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (21, 13, 205, 21, 9, '2024-03-09 20:36:00');

-- ============================================================
-- Additional Overtake Data (2024 Rounds 3, 4, 5, & 6)
-- ============================================================

-- Australian Grand Prix (Session Key: 305)
-- 1. Carlos Sainz (4) overtakes Max Verstappen (1) on Lap 2 for 1st position[cite: 1, 2, 4]
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (4, 1, 305, 2, 1, '2024-03-24 15:04:00');

-- Japanese Grand Prix (Session Key: 405)
-- 2. Lando Norris (5) overtakes Lewis Hamilton (9) on Lap 17 for 4th position[cite: 1, 2, 4]
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (5, 9, 405, 17, 4, '2024-04-07 14:32:00');

-- Chinese Grand Prix (Session Key: 505)
-- 3. Sergio Perez (2) overtakes Fernando Alonso (8) on Lap 5 for 2nd position[cite: 1, 2, 4]
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (2, 8, 505, 5, 2, '2024-04-21 15:10:00');

-- 4. Charles Leclerc (3) overtakes Fernando Alonso (8) on Lap 9 for 4th position[cite: 1, 2, 4]
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (3, 8, 505, 9, 4, '2024-04-21 15:18:00');

-- Miami Grand Prix (Session Key: 605)
-- 5. Lewis Hamilton (9) overtakes Nico Hülkenberg (13) on Lap 10 for 7th position[cite: 1, 2, 4]
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (9, 13, 605, 10, 7, '2024-05-05 16:18:00');

-- carlos overtakes
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (4, 7, 105, 14, 3, '2024-03-02 18:24:00');
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (4, 5, 405, 44, 3, '2024-04-07 15:20:00');
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (4, 3, 405, 46, 4, '2024-04-07 15:24:00');
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (4, 3, 1005, 3, 5, '2024-06-23 15:05:00');

-- charles overtakes
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (3, 6, 305, 9, 2, '2024-03-24 15:15:00');
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (3, 7, 505, 9, 6, '2024-04-21 15:18:00');
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (3, 2, 605, 1, 2, '2024-05-05 16:01:00');
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (3, 8, 1105, 20, 10, '2024-06-30 15:35:00');
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (3, 9, 1305, 1, 4, '2024-07-21 15:01:00');

-- Verstappen overtakes
-- 1. China (Session 505): Verstappen (1) overtakes Charles Leclerc (3) on Lap 16 for 2nd after pit stops
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 3, 505, 16, 2, '2024-04-21 15:32:00');

-- 2. China (Session 505): Verstappen (1) overtakes Lando Norris (5) on Lap 19 for 1st position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 5, 505, 19, 1, '2024-04-21 15:38:00');

-- 3. Japan (Session 405): Verstappen (1) overtakes Carlos Sainz (4) on Lap 18 for 2nd during pit cycles
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 4, 405, 18, 2, '2024-04-07 14:35:00');

-- 4. Spain (Session 1005): Verstappen (1) overtakes George Russell (7) on Lap 3 to reclaim 1st position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 7, 1005, 3, 1, '2024-06-23 15:05:00');

-- 5. Emilia Romagna (Session 705): Verstappen (1) overtakes Sergio Perez (2) on Lap 18 for 1st
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 2, 705, 18, 1, '2024-05-19 15:34:00');

-- ============================================================
-- 10 Additional Overtakes for Max Verstappen (Driver ID: 1)
-- ============================================================

-- Canada Grand Prix (Session Key: 905)
-- 1. Verstappen (1) overtakes George Russell (7) on Lap 3 for 2nd position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 7, 905, 3, 2, '2024-06-09 14:05:00');

-- Austrian Grand Prix (Session Key: 1105)
-- 2. Verstappen (1) overtakes Oscar Piastri (6) on Lap 24 for 1st position (after pit cycles)
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 6, 1105, 24, 1, '2024-06-30 15:35:00');

-- 3. Verstappen (1) overtakes Lewis Hamilton (9) on Lap 1 for 1st (defending position)
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 9, 1105, 1, 1, '2024-06-30 15:02:00');

-- British Grand Prix (Session Key: 1205)
-- 4. Verstappen (1) overtakes Lando Norris (5) on Lap 48 for 2nd position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 5, 1205, 48, 2, '2024-07-07 16:15:00');

-- 5. Verstappen (1) overtakes Carlos Sainz (4) on Lap 1 for 3rd position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 4, 1205, 1, 3, '2024-07-07 15:01:00');

-- Hungarian Grand Prix (Session Key: 1305)
-- 6. Verstappen (1) overtakes Lewis Hamilton (9) on Lap 50 for 3rd position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 9, 1305, 50, 3, '2024-07-21 16:10:00');

-- Belgian Grand Prix (Session Key: 1405) - Recovery drive from grid penalty
-- 7. Verstappen (1) overtakes Fernando Alonso (8) on Lap 3 for 8th position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 8, 1405, 3, 8, '2024-07-28 15:06:00');

-- 8. Verstappen (1) overtakes Alexander Albon (14) on Lap 5 for 7th position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 14, 1405, 5, 7, '2024-07-28 15:10:00');

-- Dutch Grand Prix (Session Key: 1505)
-- 9. Verstappen (1) overtakes Lando Norris (5) on Lap 1 for 1st position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 5, 1505, 1, 1, '2024-08-25 15:01:00');

-- Italian Grand Prix (Session Key: 1605)
-- 10. Verstappen (1) overtakes Lewis Hamilton (9) on Lap 15 for 5th position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (1, 9, 1605, 15, 5, '2024-09-01 15:25:00');

-- russell overtakes
-- 6. Bahrain (Session 105): Russell (7) overtakes Charles Leclerc (3) on Lap 3 for 2nd position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (7, 3, 105, 3, 2, '2024-03-02 18:05:00');

-- 7. Spain (Session 1005): Russell (7) overtakes Max Verstappen (1) on Lap 1 for 1st (Start Overtake)
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (7, 1, 1005, 1, 1, '2024-06-23 15:01:00');

-- 8. Canada (Session 905): Russell (7) overtakes Oscar Piastri (6) on Lap 63 for 3rd position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (7, 6, 905, 63, 3, '2024-06-09 15:48:00');

-- 9. Canada (Session 905): Russell (7) overtakes Lewis Hamilton (9) on Lap 68 for 3rd position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (7, 9, 905, 68, 3, '2024-06-09 15:55:00');

-- 10. Japan (Session 405): Russell (7) overtakes Oscar Piastri (6) on Lap 53 for 7th position
INSERT INTO Overtake (overtaking_driver_id, overtaken_driver_id, session_key, lap, position, date) 
VALUES (7, 6, 405, 53, 7, '2024-04-07 15:38:00');
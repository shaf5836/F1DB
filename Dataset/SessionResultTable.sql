-- Round 1: Bahrain Grand Prix (Session 105) - Laps: 57
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf) VALUES
(105, 1,  1,  26, 57, 5504.742, 0.000,  0),  -- VER (Fastest Lap: +1 pt)
(105, 2,  2,  18, 57, NULL,     22.457, 0),  -- PER
(105, 4,  3,  15, 57, NULL,     25.110, 0),  -- SAI
(105, 3,  4,  12, 57, NULL,     39.669, 0),  -- LEC
(105, 7,  5,  10, 57, NULL,     46.788, 0),  -- RUS
(105, 5,  6,  8,  57, NULL,     NULL,   0),  -- NOR
(105, 9,  7,  6,  57, NULL,     NULL,   0),  -- HAM
(105, 6,  8,  4,  57, NULL,     NULL,   0),  -- PIA
(105, 8,  9,  2,  57, NULL,     NULL,   0),  -- ALO
(105, 10, 10, 1,  57, NULL,     NULL,   0),  -- STR
(105, 20, 11, 0,  56, NULL,     NULL,   0),  -- ZOU
(105, 14, 12, 0,  56, NULL,     NULL,   0),  -- MAG
(105, 12, 13, 0,  56, NULL,     NULL,   0),  -- RIC
(105, 11, 14, 0,  56, NULL,     NULL,   0),  -- TSU
(105, 15, 15, 0,  56, NULL,     NULL,   0),  -- ALB
(105, 13, 16, 0,  56, NULL,     NULL,   0),  -- HUL
(105, 17, 17, 0,  56, NULL,     NULL,   0),  -- OCO
(105, 18, 18, 0,  56, NULL,     NULL,   0),  -- GAS
(105, 19, 19, 0,  56, NULL,     NULL,   0),  -- BOT
(105, 16, 20, 0,  55, NULL,     NULL,   0);  -- SAR

-- Round 2: Saudi Arabian Grand Prix (Session 205) - Laps: 50
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, gap_to_the_leader, dnf) VALUES
(205, 1,  1,    25, 50, 0.000,  0),   -- VER
(205, 2,  2,    18, 50, 13.643, 0),   -- PER
(205, 3,  3,    16, 50, 18.639, 0),   -- LEC (Fastest Lap: +1 pt)
(205, 6,  4,    12, 50, 32.007, 0),   -- PIA
(205, 8,  5,    10, 50, 35.759, 0),   -- ALO
(205, 7,  6,    8,  50, NULL,   0),   -- RUS
(205, 21, 7,    6,  50, NULL,   0),   -- BEA (Replaced Sainz)
(205, 5,  8,    4,  50, NULL,   0),   -- NOR
(205, 9,  9,    2,  50, NULL,   0),   -- HAM
(205, 13, 10,   1,  50, NULL,   0),   -- HUL
(205, 15, 11,   0,  50, NULL,   0),   -- ALB
(205, 14, 12,   0,  50, NULL,   0),   -- MAG
(205, 17, 13,   0,  49, NULL,   0),   -- OCO
(205, 11, 14,   0,  49, NULL,   0),   -- TSU
(205, 16, 15,   0,  49, NULL,   0),   -- SAR
(205, 12, 16,   0,  49, NULL,   0),   -- RIC
(205, 19, 17,   0,  49, NULL,   0),   -- BOT
(205, 20, 18,   0,  49, NULL,   0),   -- ZOU
(205, 10, NULL, 0,  5,  NULL,   1),   -- STR (DNF)
(205, 18, NULL, 0,  1,  NULL,   1);   -- GAS (DNF)

-- Round 3: Australian Grand Prix (Session 305) - Laps: 58
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf, dns) VALUES
(305, 4,  1,    25, 58, 0, 0),  -- SAI
(305, 3,  2,    19, 58, 0, 0),  -- LEC (Fastest Lap: +1 pt)
(305, 5,  3,    15, 58, 0, 0),  -- NOR
(305, 6,  4,    12, 58, 0, 0),  -- PIA
(305, 2,  5,    10, 58, 0, 0),  -- PER
(305, 10, 6,    8,  58, 0, 0),  -- STR
(305, 11, 7,    6,  58, 0, 0),  -- TSU
(305, 8,  8,    4,  58, 0, 0),  -- ALO
(305, 13, 9,    2,  58, 0, 0),  -- HUL
(305, 14, 10,   1,  57, 0, 0),  -- MAG
(305, 15, 11,   0,  57, 0, 0),  -- ALB
(305, 12, 12,   0,  57, 0, 0),  -- RIC
(305, 18, 13,   0,  57, 0, 0),  -- GAS
(305, 19, 14,   0,  57, 0, 0),  -- BOT
(305, 20, 15,   0,  57, 0, 0),  -- ZOU
(305, 17, 16,   0,  57, 0, 0),  -- OCO
(305, 7,  NULL, 0,  56, 1, 0),  -- RUS (DNF)
(305, 9,  NULL, 0,  15, 1, 0),  -- HAM (DNF)
(305, 1,  NULL, 0,  3,  1, 0),  -- VER (DNF - Brake failure)
(305, 16, NULL, 0,  0,  0, 1);  -- SAR (DNS - Withdrew)

-- Round 4: Japanese Grand Prix (Session 405) - Laps: 53
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(405, 1,  1,    26, 53, 0),  -- VER (Fastest Lap: +1 pt)
(405, 2,  2,    18, 53, 0),  -- PER
(405, 4,  3,    15, 53, 0),  -- SAI
(405, 3,  4,    12, 53, 0),  -- LEC
(405, 5,  5,    10, 53, 0),  -- NOR
(405, 8,  6,    8,  53, 0),  -- ALO
(405, 7,  7,    6,  53, 0),  -- RUS
(405, 6,  8,    4,  53, 0),  -- PIA
(405, 9,  9,    2,  53, 0),  -- HAM
(405, 11, 10,   1,  52, 0),  -- TSU
(405, 13, 11,   0,  52, 0),  -- HUL
(405, 10, 12,   0,  52, 0),  -- STR
(405, 14, 13,   0,  52, 0),  -- MAG
(405, 19, 14,   0,  52, 0),  -- BOT
(405, 17, 15,   0,  52, 0),  -- OCO
(405, 18, 16,   0,  52, 0),  -- GAS
(405, 16, 17,   0,  52, 0),  -- SAR
(405, 20, NULL, 0,  12, 1),  -- ZOU (DNF)
(405, 12, NULL, 0,  0,  1),  -- RIC (DNF)
(405, 15, NULL, 0,  0,  1);  -- ALB (DNF)

-- Round 5: Chinese Grand Prix (Session 505) - Laps: 56
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(505, 1,  1,    25, 56, 0),  -- VER
(505, 5,  2,    18, 56, 0),  -- NOR
(505, 2,  3,    15, 56, 0),  -- PER
(505, 3,  4,    12, 56, 0),  -- LEC
(505, 4,  5,    10, 56, 0),  -- SAI
(505, 7,  6,    8,  56, 0),  -- RUS
(505, 8,  7,    7,  56, 0),  -- ALO (Fastest Lap: 6 + 1 pts)
(505, 6,  8,    4,  56, 0),  -- PIA
(505, 9,  9,    2,  56, 0),  -- HAM
(505, 13, 10,   1,  56, 0),  -- HUL
(505, 17, 11,   0,  56, 0),  -- OCO
(505, 15, 12,   0,  56, 0),  -- ALB
(505, 18, 13,   0,  56, 0),  -- GAS
(505, 20, 14,   0,  56, 0),  -- ZOU
(505, 10, 15,   0,  56, 0),  -- STR
(505, 14, 16,   0,  56, 0),  -- MAG
(505, 16, 17,   0,  56, 0),  -- SAR
(505, 12, NULL, 0,  33, 1),  -- RIC (DNF)
(505, 11, NULL, 0,  26, 1),  -- TSU (DNF)
(505, 19, NULL, 0,  19, 1);  -- BOT (DNF)

INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(605, 5,  1,  25, 57, 0),  -- NOR (First Career Win)
(605, 1,  2,  18, 57, 0),  -- VER
(605, 3,  3,  15, 57, 0),  -- LEC
(605, 2,  4,  12, 57, 0),  -- PER
(605, 4,  5,  10, 57, 0),  -- SAI
(605, 9,  6,  8,  57, 0),  -- HAM
(605, 11, 7,  6,  57, 0),  -- TSU
(605, 7,  8,  4,  57, 0),  -- RUS
(605, 8,  9,  2,  57, 0),  -- ALO
(605, 17, 10, 1,  57, 0),  -- OCO
(605, 6,  13, 1,  57, 0),  -- PIA (Fastest Lap: +1 pt, finished out of top 10)
(605, 16, NULL, 0, 10, 1); -- SAR (DNF)

INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(705, 1,  1,  25, 63, 0),  -- VER
(705, 5,  2,  18, 63, 0),  -- NOR
(705, 3,  3,  15, 63, 0),  -- LEC
(705, 6,  4,  12, 63, 0),  -- PIA
(705, 4,  5,  10, 63, 0),  -- SAI
(705, 9,  6,  8,  63, 0),  -- HAM
(705, 7,  7,  7,  63, 0),  -- RUS (Fastest Lap: 6 + 1 pts)
(705, 2,  8,  4,  63, 0),  -- PER
(705, 10, 9,  2,  63, 0),  -- STR
(705, 11, 10, 1,  63, 0),  -- TSU
(705, 15, NULL, 0, 52, 1); -- ALB (DNF)

INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(805, 3,  1,  25, 78, 0),  -- LEC (Home Win)
(805, 6,  2,  18, 78, 0),  -- PIA
(805, 4,  3,  15, 78, 0),  -- SAI
(805, 5,  4,  12, 78, 0),  -- NOR
(805, 7,  5,  10, 78, 0),  -- RUS
(805, 1,  6,  8,  78, 0),  -- VER
(805, 9,  7,  7,  78, 0),  -- HAM (Fastest Lap: 6 + 1 pts)
(805, 11, 8,  4,  78, 0),  -- TSU
(805, 15, 9,  2,  78, 0),  -- ALB
(805, 18, 10, 1,  78, 0),  -- GAS
(805, 2,  NULL, 0, 0,  1),  -- PER (DNF - Lap 1 Crash)
(805, 13, NULL, 0, 0,  1),  -- HUL (DNF)
(805, 14, NULL, 0, 0,  1);  -- MAG (DNF)

-- Round 9: Canadian Grand Prix (Session 905) - Laps: 70
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(905, 1,  1,  25, 70, 0),  -- VER
(905, 5,  2,  18, 70, 0),  -- NOR
(905, 7,  3,  15, 70, 0),  -- RUS
(905, 9,  4,  13, 70, 0),  -- HAM (Fastest Lap: 12 + 1 pts)
(905, 6,  5,  10, 70, 0),  -- PIA
(905, 8,  6,  8,  70, 0),  -- ALO
(905, 10, 7,  6,  70, 0),  -- STR
(905, 12, 8,  4,  70, 0),  -- RIC
(905, 18, 9,  2,  70, 0),  -- GAS
(905, 17, 10, 1,  70, 0),  -- OCO
(905, 3,  NULL, 0, 52, 1), -- LEC (DNF - Engine/Tires)
(905, 2,  NULL, 0, 52, 1); -- PER (DNF - Crash)

-- Round 10: Spanish Grand Prix (Session 1005) - Laps: 66
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(1005, 1,  1,  25, 66, 0),  -- VER
(1005, 5,  2,  19, 66, 0),  -- NOR (Fastest Lap: 18 + 1 pts)
(1005, 9,  3,  15, 66, 0),  -- HAM
(1005, 7,  4,  12, 66, 0),  -- RUS
(1005, 3,  5,  10, 66, 0),  -- LEC
(1005, 4,  6,  8,  66, 0),  -- SAI
(1005, 6,  7,  6,  66, 0),  -- PIA
(1005, 2,  8,  4,  66, 0),  -- PER
(1005, 18, 9,  2,  66, 0),  -- GAS
(1005, 17, 10, 1,  66, 0);  -- OCO

-- Round 11: Austrian Grand Prix (Session 1105) - Laps: 71
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(1105, 7,  1,  25, 71, 0),  -- RUS
(1105, 6,  2,  18, 71, 0),  -- PIA
(1105, 4,  3,  15, 71, 0),  -- SAI
(1105, 9,  4,  12, 71, 0),  -- HAM
(1105, 1,  5,  10, 71, 0),  -- VER (Post-collision with NOR)
(1105, 13, 6,  8,  71, 0),  -- HUL
(1105, 2,  7,  6,  71, 0),  -- PER
(1105, 14, 8,  4,  71, 0),  -- MAG
(1105, 12, 9,  2,  71, 0),  -- RIC
(1105, 18, 10, 1,  71, 0),  -- GAS
(1105, 5,  NULL, 0, 64, 1); -- NOR (DNF - Collision damage)

INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(1205, 9,  1,  25, 52, 0),  -- HAM (Emotional Home Win)
(1205, 1,  2,  18, 52, 0),  -- VER
(1205, 5,  3,  15, 52, 0),  -- NOR
(1205, 6,  4,  12, 52, 0),  -- PIA
(1205, 4,  5,  11, 52, 0),  -- SAI (Fastest Lap: 10 + 1 pts)
(1205, 13, 6,  8,  52, 0),  -- HUL
(1205, 10, 7,  6,  52, 0),  -- STR
(1205, 8,  8,  4,  52, 0),  -- ALO
(1205, 15, 9,  2,  52, 0),  -- ALB
(1205, 11, 10, 1,  52, 0),  -- TSU
(1205, 7,  NULL, 0, 33, 1); -- RUS (DNF - Water Pressure)

-- Round 13: Hungarian Grand Prix (Session 1305) - Laps: 70
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(1305, 6,  1,  25, 70, 0),  -- PIA (First Career Win)
(1305, 5,  2,  18, 70, 0),  -- NOR
(1305, 9,  3,  15, 70, 0),  -- HAM
(1305, 3,  4,  12, 70, 0),  -- LEC
(1305, 1,  5,  10, 70, 0),  -- VER
(1305, 4,  6,  8,  70, 0),  -- SAI
(1305, 2,  7,  6,  70, 0),  -- PER
(1305, 7,  8,  4,  70, 0),  -- RUS
(1305, 11, 9,  2,  70, 0),  -- TSU
(1305, 10, 10, 1,  70, 0);  -- STR

INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(1405, 9,  1,  25, 44, 0),  -- HAM (Promoted to 1st)
(1405, 6,  2,  18, 44, 0),  -- PIA
(1405, 3,  3,  15, 44, 0),  -- LEC
(1405, 1,  4,  12, 44, 0),  -- VER
(1405, 5,  5,  10, 44, 0),  -- NOR
(1405, 4,  6,  8,  44, 0),  -- SAI
(1405, 2,  7,  7,  44, 0),  -- PER (Fastest Lap: 6 + 1 pts)
(1405, 8,  8,  4,  44, 0),  -- ALO
(1405, 17, 9,  2,  44, 0),  -- OCO
(1405, 12, 10, 1,  44, 0),  -- RIC
(1405, 7,  NULL, 0, 44, 1); -- RUS (DSQ - Classified as DNF/Excluded)

-- Round 15: Dutch Grand Prix (Session 1505) - Laps: 72
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(1505, 5,  1,  26, 72, 0),  -- NOR (Fastest Lap: 25 + 1 pts)
(1505, 1,  2,  18, 72, 0),  -- VER
(1505, 3,  3,  15, 72, 0),  -- LEC
(1505, 6,  4,  12, 72, 0),  -- PIA
(1505, 4,  5,  10, 72, 0),  -- SAI
(1505, 2,  6,  8,  72, 0),  -- PER
(1505, 7,  7,  6,  72, 0),  -- RUS
(1505, 9,  8,  4,  72, 0),  -- HAM
(1505, 18, 9,  2,  72, 0),  -- GAS
(1505, 8,  10, 1,  72, 0),  -- ALO
(1505, 13, 11, 0,  72, 0),  -- HUL
(1505, 12, 12, 0,  72, 0),  -- RIC
(1505, 10, 13, 0,  72, 0),  -- STR
(1505, 15, 14, 0,  72, 0),  -- ALB
(1505, 17, 15, 0,  71, 0),  -- OCO
(1505, 11, 16, 0,  71, 0),  -- TSU
(1505, 14, 17, 0,  71, 0),  -- MAG
(1505, 19, 18, 0,  70, 0),  -- BOT
(1505, 20, 19, 0,  70, 0),  -- ZOU
(1505, 16, 20, 0,  70, 0);  -- SAR

-- Round 16: Italian Grand Prix (Session 1605) - Laps: 53
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(1605, 3,  1,  25, 53, 0),  -- LEC (Masterclass on 1-stop)
(1605, 6,  2,  18, 53, 0),  -- PIA
(1605, 5,  3,  16, 53, 0),  -- NOR (Fastest Lap: 15 + 1 pts)
(1605, 4,  4,  12, 53, 0),  -- SAI
(1605, 9,  5,  10, 53, 0),  -- HAM
(1605, 1,  6,  8,  53, 0),  -- VER
(1605, 7,  7,  6,  53, 0),  -- RUS
(1605, 2,  8,  4,  53, 0),  -- PER
(1605, 15, 9,  2,  53, 0),  -- ALB
(1605, 14, 10, 1,  53, 0);  -- MAG

-- Round 17: Azerbaijan Grand Prix (Session 1705) - Laps: 51
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(1705, 6,  1,  25, 51, 0),  -- PIA
(1705, 3,  2,  18, 51, 0),  -- LEC
(1705, 7,  3,  15, 51, 0),  -- RUS
(1705, 5,  4,  13, 51, 0),  -- NOR (Fastest Lap: 12 + 1 pts)
(1705, 1,  5,  10, 51, 0),  -- VER
(1705, 8,  6,  8,  51, 0),  -- ALO
(1705, 15, 7,  6,  51, 0),  -- ALB
(1705, 22, 8,  4,  51, 0),  -- COL
(1705, 9,  9,  2,  51, 0),  -- HAM
(1705, 21, 10, 1,  51, 0),  -- BEA (Subbed for MAG)
(1705, 2,  NULL, 0, 49, 1), -- PER (DNF - Collision)
(1705, 4,  NULL, 0, 49, 1); -- SAI (DNF - Collision)

-- Round 18: Singapore Grand Prix (Session 1805) - Laps: 62
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(1805, 5,  1,  25, 62, 0),  -- NOR
(1805, 1,  2,  18, 62, 0),  -- VER
(1805, 6,  3,  15, 62, 0),  -- PIA
(1805, 7,  4,  12, 62, 0),  -- RUS
(1805, 3,  5,  10, 62, 0),  -- LEC
(1805, 9,  6,  8,  62, 0),  -- HAM
(1805, 4,  7,  6,  62, 0),  -- SAI
(1805, 8,  8,  4,  62, 0),  -- ALO
(1805, 13, 9,  2,  62, 0),  -- HUL
(1805, 2,  10, 1,  62, 0),  -- PER
(1805, 15, NULL, 0, 14, 1); -- ALB (DNF - Overheating)

-- Round 19: United States Grand Prix (Session 1905) - Laps: 56
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(1905, 3,  1,  25, 56, 0),  -- LEC
(1905, 4,  2,  18, 56, 0),  -- SAI
(1905, 1,  3,  15, 56, 0),  -- VER
(1905, 5,  4,  12, 56, 0),  -- NOR
(1905, 6,  5,  10, 56, 0),  -- PIA
(1905, 7,  6,  8,  56, 0),  -- RUS
(1905, 2,  7,  6,  56, 0),  -- PER
(1905, 13, 8,  4,  56, 0),  -- HUL
(1905, 23, 9,  2,  56, 0),  -- LAW (Replaced RIC)
(1905, 22, 10, 1,  56, 0),  -- COL
(1905, 9,  NULL, 0, 2,  1); -- HAM (DNF - Spin)

-- Round 20: Mexico City Grand Prix (Session 2005) - Laps: 71
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(2005, 4,  1,  25, 71, 0),  -- SAI
(2005, 5,  2,  18, 71, 0),  -- NOR
(2005, 3,  3,  16, 71, 0),  -- LEC (Fastest Lap: 15 + 1 pts)
(2005, 9,  4,  12, 71, 0),  -- HAM
(2005, 7,  5,  10, 71, 0),  -- RUS
(2005, 1,  6,  8,  71, 0),  -- VER
(2005, 14, 7,  6,  71, 0),  -- MAG
(2005, 6,  8,  4,  71, 0),  -- PIA
(2005, 13, 9,  2,  71, 0),  -- HUL
(2005, 18, 10, 1,  71, 0),  -- GAS
(2005, 15, NULL, 0, 0,  1), -- ALB (DNF)
(2005, 11, NULL, 0, 0,  1); -- TSU (DNF)

-- Round 21: São Paulo Grand Prix (Session 2105) - Laps: 69
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(2105, 1,  1,  26, 69, 0),  -- VER (Win from P17, Fastest Lap: +1 pt)
(2105, 17, 2,  18, 69, 0),  -- OCO
(2105, 18, 3,  15, 69, 0),  -- GAS
(2105, 7,  4,  12, 69, 0),  -- RUS
(2105, 3,  5,  10, 69, 0),  -- LEC
(2105, 5,  6,  8,  69, 0),  -- NOR
(2105, 11, 7,  6,  69, 0),  -- TSU
(2105, 6,  8,  4,  69, 0),  -- PIA
(2105, 23, 9,  2,  69, 0),  -- LAW
(2105, 9,  10, 1,  69, 0),  -- HAM
(2105, 4,  NULL, 0, 38, 1), -- SAI (DNF - Crash)
(2105, 22, NULL, 0, 31, 1); -- COL (DNF - Crash)

-- Round 22: Las Vegas Grand Prix (Session 2205) - Laps: 50
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(2205, 7,  1,  26, 50, 0),  -- RUS (Fastest Lap: 25 + 1 pts)
(2205, 9,  2,  18, 50, 0),  -- HAM
(2205, 4,  3,  15, 50, 0),  -- SAI
(2205, 3,  4,  12, 50, 0),  -- LEC
(2205, 1,  5,  10, 50, 0),  -- VER (Crowned World Champion)
(2205, 5,  6,  8,  50, 0),  -- NOR
(2205, 6,  7,  6,  50, 0),  -- PIA
(2205, 13, 8,  4,  50, 0),  -- HUL
(2205, 2,  9,  2,  50, 0),  -- PER
(2205, 8,  10, 1,  50, 0);  -- ALO

-- Round 23: Qatar Grand Prix (Session 2305) - Laps: 57
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(2305, 1,  1,  25, 57, 0),  -- VER
(2305, 3,  2,  18, 57, 0),  -- LEC
(2305, 6,  3,  15, 57, 0),  -- PIA
(2305, 9,  4,  12, 57, 0),  -- HAM
(2305, 18, 5,  10, 57, 0),  -- GAS
(2305, 4,  6,  8,  57, 0),  -- SAI
(2305, 8,  7,  6,  57, 0),  -- ALO
(2305, 20, 8,  4,  57, 0),  -- ZOU
(2305, 14, 9,  2,  57, 0),  -- MAG
(2305, 5,  10, 2,  57, 0),  -- NOR (Fastest Lap: 1 + 1 pts)
(2305, 13, NULL, 0, 0,  1), -- HUL (DNF)
(2305, 15, NULL, 0, 0,  1); -- ALB (DNF)

-- Round 24: Abu Dhabi Grand Prix (Session 2405) - Laps: 58
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, dnf) VALUES
(2405, 5,  1,  26, 58, 0),  -- NOR (Fastest Lap: 25 + 1 pts)
(2405, 6,  2,  18, 58, 0),  -- PIA
(2405, 3,  3,  15, 58, 0),  -- LEC
(2405, 9,  4,  12, 58, 0),  -- HAM
(2405, 7,  5,  10, 58, 0),  -- RUS
(2405, 1,  6,  8,  58, 0),  -- VER
(2405, 18, 7,  6,  58, 0),  -- GAS
(2405, 8,  8,  4,  58, 0),  -- ALO
(2405, 14, 9,  2,  58, 0),  -- MAG
(2405, 4,  10, 1,  58, 0);  -- SAI

-- Inserting Free practice results

INSERT INTO Session_result 
    (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) 
VALUES
-- Bahrain GP (101, 102, 103)
(101, 1, 1, 0, 22, NULL, 0.000, 0, 0, 0), (101, 2, 2, 0, 24, NULL, 0.125, 0, 0, 0), (101, 3, 3, 0, 19, NULL, 0.450, 0, 0, 0),
(102, 1, 1, 0, 28, NULL, 0.000, 0, 0, 0), (102, 5, 2, 0, 27, NULL, 0.080, 0, 0, 0), (102, 11, 3, 0, 30, NULL, 0.210, 0, 0, 0),
(103, 4, 1, 0, 15, NULL, 0.000, 0, 0, 0), (103, 1, 2, 0, 18, NULL, 0.055, 0, 0, 0), (103, 16, 3, 0, 14, NULL, 0.320, 0, 0, 0),

-- Saudi Arabian GP (201, 202, 203)
(201, 1, 1, 0, 23, NULL, 0.000, 0, 0, 0), (201, 7, 2, 0, 22, NULL, 0.180, 0, 0, 0),  -- Russell (ID 7)
(202, 8, 1, 0, 26, NULL, 0.000, 0, 0, 0), (202, 1, 2, 0, 28, NULL, 0.230, 0, 0, 0),  -- Alonso (ID 8)
(203, 1, 1, 0, 20, NULL, 0.000, 0, 0, 0), (203, 3, 2, 0, 19, NULL, 0.120, 0, 0, 0),  -- Leclerc (ID 3)

-- Australian GP (301, 302, 303)
(301, 4, 1, 0, 21, NULL, 0.000, 0, 0, 0), (301, 1, 2, 0, 20, NULL, 0.018, 0, 0, 0),
(302, 3, 1, 0, 29, NULL, 0.000, 0, 0, 0), (302, 4, 2, 0, 25, NULL, 0.381, 0, 0, 0),  -- Leclerc (ID 3)
(303, 3, 1, 0, 22, NULL, 0.000, 0, 0, 0), (303, 1, 2, 0, 18, NULL, 0.057, 0, 0, 0),  -- Leclerc (ID 3)

-- Japanese GP (401, 402, 403)
(401, 1, 1, 0, 25, NULL, 0.000, 0, 0, 0), (401, 11, 2, 0, 24, NULL, 0.181, 0, 0, 0),
(402, 6, 1, 0, 7, NULL, 0.000, 0, 0, 0),  (402, 9, 2, 0, 6, NULL, 0.501, 0, 0, 0),   -- Piastri (ID 6), Hamilton (ID 9)
(403, 1, 1, 0, 23, NULL, 0.000, 0, 0, 0), (403, 11, 2, 0, 22, NULL, 0.269, 0, 0, 0),

-- Sprint Weekends (Only P1 exists: 501, 601, 1101, 1901, 2101, 2301)
(501, 10, 1, 0, 22, NULL, 0.000, 0, 0, 0), (501, 9, 2, 0, 21, NULL, 0.320, 0, 0, 0), -- Stroll (ID 10), Hamilton (ID 9)
(601, 1, 1, 0, 24, NULL, 0.000, 0, 0, 0),  (601, 6, 2, 0, 23, NULL, 0.105, 0, 0, 0), -- Piastri (ID 6)
(1101, 1, 1, 0, 26, NULL, 0.000, 0, 0, 0), (1101, 9, 2, 0, 25, NULL, 0.276, 0, 0, 0),-- Hamilton (ID 9)
(1901, 4, 1, 0, 22, NULL, 0.000, 0, 0, 0), (1901, 3, 2, 0, 21, NULL, 0.021, 0, 0, 0), -- Sainz (ID 4), Leclerc (ID 3)
(2101, 4, 1, 0, 28, NULL, 0.000, 0, 0, 0), (2101, 7, 2, 0, 27, NULL, 0.181, 0, 0, 0), -- Russell (ID 7)
(2301, 3, 1, 0, 24, NULL, 0.000, 0, 0, 0), (2301, 4, 2, 0, 24, NULL, 0.420, 0, 0, 0), -- Leclerc (ID 3)

-- Emilia Romagna GP (701, 702, 703)
(701, 1, 1, 0, 25, NULL, 0.000, 0, 0, 0), (701, 3, 2, 0, 24, NULL, 0.142, 0, 0, 0), (701, 5, 3, 0, 26, NULL, 0.315, 0, 0, 0),
(702, 3, 1, 0, 28, NULL, 0.000, 0, 0, 0), (702, 5, 2, 0, 27, NULL, 0.192, 0, 0, 0), (702, 1, 3, 0, 30, NULL, 0.405, 0, 0, 0),
(703, 5, 1, 0, 22, NULL, 0.000, 0, 0, 0), (703, 3, 2, 0, 21, NULL, 0.095, 0, 0, 0), (703, 1, 3, 0, 19, NULL, 0.512, 0, 0, 0),

-- Monaco GP (801, 802, 803)
(801, 3, 1, 0, 30, NULL, 0.000, 0, 0, 0), (801, 9, 2, 0, 28, NULL, 0.211, 0, 0, 0), (801, 1, 3, 0, 26, NULL, 0.355, 0, 0, 0),
(802, 3, 1, 0, 29, NULL, 0.000, 0, 0, 0), (802, 9, 2, 0, 30, NULL, 0.158, 0, 0, 0), (802, 5, 3, 0, 27, NULL, 0.421, 0, 0, 0),
(803, 3, 1, 0, 25, NULL, 0.000, 0, 0, 0), (803, 1, 2, 0, 24, NULL, 0.197, 0, 0, 0), (803, 5, 3, 0, 22, NULL, 0.288, 0, 0, 0),

-- Canadian GP (901, 902, 903)
(901, 5, 1, 0, 20, NULL, 0.000, 0, 0, 0), (901, 1, 2, 0, 22, NULL, 0.328, 0, 0, 0),
(902, 8, 1, 0, 26, NULL, 0.000, 0, 0, 0), (902, 7, 2, 0, 25, NULL, 0.441, 0, 0, 0),
(903, 1, 1, 0, 28, NULL, 0.000, 0, 0, 0), (903, 5, 2, 0, 29, NULL, 0.125, 0, 0, 0),

-- Spanish GP (1001, 1002, 1003)
(1001, 5, 1, 0, 24, NULL, 0.000, 0, 0, 0), (1001, 1, 2, 0, 23, NULL, 0.024, 0, 0, 0),
(1002, 9, 1, 0, 29, NULL, 0.000, 0, 0, 0), (1002, 4, 2, 0, 28, NULL, 0.022, 0, 0, 0),
(1003, 4, 1, 0, 25, NULL, 0.000, 0, 0, 0), (1003, 5, 2, 0, 24, NULL, 0.030, 0, 0, 0),

-- British GP (1201, 1202, 1203)
(1201, 5, 1, 0, 26, NULL, 0.000, 0, 0, 0), (1201, 1, 2, 0, 25, NULL, 0.134, 0, 0, 0),
(1202, 5, 1, 0, 28, NULL, 0.000, 0, 0, 0), (1202, 6, 2, 0, 27, NULL, 0.331, 0, 0, 0),
(1203, 7, 1, 0, 22, NULL, 0.000, 0, 0, 0), (1203, 9, 2, 0, 21, NULL, 0.035, 0, 0, 0),

-- Hungarian GP (1301, 1302, 1303)
(1301, 4, 1, 0, 25, NULL, 0.000, 0, 0, 0), (1301, 1, 2, 0, 24, NULL, 0.209, 0, 0, 0),
(1302, 5, 1, 0, 27, NULL, 0.000, 0, 0, 0), (1302, 1, 2, 0, 28, NULL, 0.243, 0, 0, 0),
(1303, 5, 1, 0, 24, NULL, 0.000, 0, 0, 0), (1303, 6, 2, 0, 23, NULL, 0.044, 0, 0, 0),

-- Belgian GP (1401, 1402, 1403)
(1401, 1, 1, 0, 22, NULL, 0.000, 0, 0, 0), (1401, 6, 2, 0, 21, NULL, 0.531, 0, 0, 0),
(1402, 5, 1, 0, 26, NULL, 0.000, 0, 0, 0), (1402, 6, 2, 0, 25, NULL, 0.215, 0, 0, 0),
(1403, 1, 1, 0, 20, NULL, 0.000, 0, 0, 0), (1403, 2, 2, 0, 19, NULL, 1.433, 0, 0, 0),

-- Dutch GP (1501, 1502, 1503)
(1501, 5, 1, 0, 25, NULL, 0.000, 0, 0, 0), (1501, 1, 2, 0, 26, NULL, 0.201, 0, 0, 0),
(1502, 7, 1, 0, 28, NULL, 0.000, 0, 0, 0), (1502, 6, 2, 0, 27, NULL, 0.061, 0, 0, 0),
(1503, 1, 1, 0, 21, NULL, 0.000, 0, 0, 0), (1503, 7, 2, 0, 22, NULL, 1.387, 0, 0, 0),

-- Italian GP (1601, 1602, 1603)
(1601, 1, 1, 0, 26, NULL, 0.000, 0, 0, 0), (1601, 3, 2, 0, 25, NULL, 0.226, 0, 0, 0),
(1602, 9, 1, 0, 29, NULL, 0.000, 0, 0, 0), (1602, 5, 2, 0, 28, NULL, 0.003, 0, 0, 0),
(1603, 9, 1, 0, 24, NULL, 0.000, 0, 0, 0), (1603, 7, 2, 0, 23, NULL, 0.093, 0, 0, 0),

-- Azerbaijan GP (1701, 1702, 1703)
(1701, 1, 1, 0, 21, NULL, 0.000, 0, 0, 0), (1701, 9, 2, 0, 22, NULL, 0.313, 0, 0, 0),
(1702, 3, 1, 0, 26, NULL, 0.000, 0, 0, 0), (1702, 2, 2, 0, 25, NULL, 0.006, 0, 0, 0),
(1703, 7, 1, 0, 22, NULL, 0.000, 0, 0, 0), (1703, 3, 2, 0, 23, NULL, 0.013, 0, 0, 0),

-- Singapore GP (1801, 1802, 1803)
(1801, 3, 1, 0, 24, NULL, 0.000, 0, 0, 0), (1801, 5, 2, 0, 25, NULL, 0.076, 0, 0, 0),
(1802, 5, 1, 0, 28, NULL, 0.000, 0, 0, 0), (1802, 3, 2, 0, 27, NULL, 0.058, 0, 0, 0),
(1803, 5, 1, 0, 22, NULL, 0.000, 0, 0, 0), (1803, 7, 2, 0, 21, NULL, 0.479, 0, 0, 0),

-- Mexico City GP (2001, 2002, 2003)
(2001, 7, 1, 0, 23, NULL, 0.000, 0, 0, 0), (2001, 4, 2, 0, 24, NULL, 0.317, 0, 0, 0),
(2002, 7, 1, 0, 29, NULL, 0.000, 0, 0, 0), (2002, 6, 2, 0, 30, NULL, 0.428, 0, 0, 0),
(2003, 6, 1, 0, 25, NULL, 0.000, 0, 0, 0), (2003, 5, 2, 0, 26, NULL, 0.059, 0, 0, 0),

-- Las Vegas GP (2201, 2202, 2203)
(2201, 9, 1, 0, 26, NULL, 0.000, 0, 0, 0), (2201, 7, 2, 0, 25, NULL, 0.396, 0, 0, 0),
(2202, 9, 1, 0, 28, NULL, 0.000, 0, 0, 0), (2202, 5, 2, 0, 27, NULL, 0.011, 0, 0, 0),
(2203, 7, 1, 0, 24, NULL, 0.000, 0, 0, 0), (2203, 5, 2, 0, 23, NULL, 0.215, 0, 0, 0),

-- Abu Dhabi GP (2401, 2402, 2403)
(2401, 3, 1, 0, 22, NULL, 0.000, 0, 0, 0), (2401, 5, 2, 0, 23, NULL, 0.221, 0, 0, 0),
(2402, 3, 1, 0, 28, NULL, 0.000, 0, 0, 0), (2402, 5, 2, 0, 27, NULL, 0.150, 0, 0, 0),
(2403, 5, 1, 0, 24, NULL, 0.000, 0, 0, 0), (2403, 1, 2, 0, 25, NULL, 0.095, 0, 0, 0);

-- Qualifying data insertion 

-- Round 1: Bahrain Grand Prix Qualifying (Session 104)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(104, 1, 1, 0, 15, NULL, 0.000, 0, 0, 0),   -- VER
(104, 3, 2, 0, 15, NULL, 0.228, 0, 0, 0),   -- LEC
(104, 7, 3, 0, 15, NULL, 0.306, 0, 0, 0),   -- RUS
(104, 4, 4, 0, 15, NULL, 0.328, 0, 0, 0),   -- SAI
(104, 2, 5, 0, 15, NULL, 0.358, 0, 0, 0),   -- PER
(104, 8, 6, 0, 12, NULL, 0.363, 0, 0, 0),   -- ALO
(104, 5, 7, 0, 15, NULL, 0.435, 0, 0, 0),   -- NOR
(104, 6, 8, 0, 15, NULL, 0.503, 0, 0, 0),   -- PIA
(104, 9, 9, 0, 15, NULL, 0.525, 0, 0, 0),   -- HAM
(104, 13, 10, 0, 12, NULL, 1.411, 0, 0, 0), -- HUL
(104, 11, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- TSU
(104, 10, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- STR
(104, 15, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- ALB
(104, 12, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- RIC
(104, 14, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- MAG
(104, 19, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- BOT
(104, 20, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- ZHO
(104, 16, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- SAR
(104, 17, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- OCO
(104, 18, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- GAS

-- Round 2: Saudi Arabian Grand Prix Qualifying (Session 204)
-- Note: SAI (4) absent, BEA (21) competing.
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(204, 1, 1, 0, 18, NULL, 0.000, 0, 0, 0), (204, 3, 2, 0, 18, NULL, 0.319, 0, 0, 0),
(204, 2, 3, 0, 18, NULL, 0.335, 0, 0, 0), (204, 8, 4, 0, 18, NULL, 0.374, 0, 0, 0),
(204, 6, 5, 0, 18, NULL, 0.617, 0, 0, 0), (204, 5, 6, 0, 18, NULL, 0.657, 0, 0, 0),
(204, 7, 7, 0, 18, NULL, 0.844, 0, 0, 0), (204, 9, 8, 0, 18, NULL, 0.889, 0, 0, 0),
(204, 11, 9, 0, 18, NULL, 0.947, 0, 0, 0), (204, 10, 10, 0, 18, NULL, 1.103, 0, 0, 0),
(204, 21, 11, 0, 12, NULL, NULL, 0, 0, 0), (204, 15, 12, 0, 12, NULL, NULL, 0, 0, 0),
(204, 14, 13, 0, 12, NULL, NULL, 0, 0, 0), (204, 12, 14, 0, 12, NULL, NULL, 0, 0, 0),
(204, 13, 15, 0, 12, NULL, NULL, 0, 0, 0), (204, 19, 16, 0, 6, NULL, NULL, 0, 0, 0),
(204, 17, 17, 0, 6, NULL, NULL, 0, 0, 0), (204, 18, 18, 0, 6, NULL, NULL, 0, 0, 0),
(204, 16, 19, 0, 6, NULL, NULL, 0, 0, 0), (204, 20, 20, 0, 6, NULL, NULL, 0, 0, 0);

-- Round 3: Australian Grand Prix Qualifying (Session 304)
-- Note: SAR (16) withdrew (DNS).
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(304, 1, 1, 0, 15, NULL, 0.000, 0, 0, 0), (304, 4, 2, 0, 15, NULL, 0.270, 0, 0, 0),
(304, 2, 3, 0, 15, NULL, 0.359, 0, 0, 0), (304, 5, 4, 0, 15, NULL, 0.400, 0, 0, 0),
(304, 3, 5, 0, 15, NULL, 0.520, 0, 0, 0), (304, 6, 6, 0, 15, NULL, 0.657, 0, 0, 0),
(304, 7, 7, 0, 15, NULL, 0.809, 0, 0, 0), (304, 11, 8, 0, 15, NULL, 0.888, 0, 0, 0),
(304, 10, 9, 0, 15, NULL, 1.102, 0, 0, 0), (304, 8, 10, 0, 15, NULL, 1.652, 0, 0, 0),
(304, 9, 11, 0, 12, NULL, NULL, 0, 0, 0), (304, 15, 12, 0, 12, NULL, NULL, 0, 0, 0),
(304, 19, 13, 0, 12, NULL, NULL, 0, 0, 0), (304, 14, 14, 0, 12, NULL, NULL, 0, 0, 0),
(304, 17, 15, 0, 12, NULL, NULL, 0, 0, 0), (304, 13, 16, 0, 6, NULL, NULL, 0, 0, 0),
(304, 18, 17, 0, 6, NULL, NULL, 0, 0, 0), (304, 12, 18, 0, 6, NULL, NULL, 0, 0, 0),
(304, 20, 19, 0, 6, NULL, NULL, 0, 0, 0), (304, 16, 20, 0, 0, NULL, NULL, 0, 1, 0);

-- Round 4: Japanese Grand Prix Qualifying (Session 404)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(404, 1, 1, 0, 12, NULL, 0.000, 0, 0, 0), (404, 2, 2, 0, 12, NULL, 0.066, 0, 0, 0),
(404, 5, 3, 0, 12, NULL, 0.292, 0, 0, 0), (404, 4, 4, 0, 12, NULL, 0.485, 0, 0, 0),
(404, 8, 5, 0, 12, NULL, 0.489, 0, 0, 0), (404, 6, 6, 0, 12, NULL, 0.563, 0, 0, 0),
(404, 9, 7, 0, 12, NULL, 0.569, 0, 0, 0), (404, 3, 8, 0, 12, NULL, 0.589, 0, 0, 0),
(404, 7, 9, 0, 12, NULL, 0.811, 0, 0, 0), (404, 11, 10, 0, 12, NULL, 1.223, 0, 0, 0),
(404, 12, 11, 0, 12, NULL, NULL, 0, 0, 0), (404, 13, 12, 0, 12, NULL, NULL, 0, 0, 0),
(404, 19, 13, 0, 12, NULL, NULL, 0, 0, 0), (404, 17, 14, 0, 12, NULL, NULL, 0, 0, 0),
(404, 10, 15, 0, 12, NULL, NULL, 0, 0, 0), (404, 18, 16, 0, 6, NULL, NULL, 0, 0, 0),
(404, 14, 17, 0, 6, NULL, NULL, 0, 0, 0), (404, 16, 18, 0, 6, NULL, NULL, 0, 0, 0),
(404, 20, 19, 0, 6, NULL, NULL, 0, 0, 0), (404, 15, 20, 0, 6, NULL, NULL, 0, 0, 0);

-- Round 5: Chinese Grand Prix Qualifying (Session 504)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(504, 1, 1, 0, 18, NULL, 0.000, 0, 0, 0), (504, 2, 2, 0, 18, NULL, 0.322, 0, 0, 0),
(504, 8, 3, 0, 18, NULL, 0.488, 0, 0, 0), (504, 5, 4, 0, 18, NULL, 0.505, 0, 0, 0),
(504, 6, 5, 0, 18, NULL, 0.613, 0, 0, 0), (504, 3, 6, 0, 18, NULL, 0.629, 0, 0, 0),
(504, 4, 7, 0, 18, NULL, 0.637, 0, 0, 0), (504, 7, 8, 0, 18, NULL, 0.773, 0, 0, 0),
(504, 13, 9, 0, 18, NULL, 0.784, 0, 0, 0), (504, 19, 10, 0, 18, NULL, 0.939, 0, 0, 0),
(504, 10, 11, 0, 12, NULL, NULL, 0, 0, 0), (504, 12, 12, 0, 12, NULL, NULL, 0, 0, 0),
(504, 17, 13, 0, 12, NULL, NULL, 0, 0, 0), (504, 15, 14, 0, 12, NULL, NULL, 0, 0, 0),
(504, 18, 15, 0, 12, NULL, NULL, 0, 0, 0), (504, 20, 16, 0, 6, NULL, NULL, 0, 0, 0),
(504, 14, 17, 0, 6, NULL, NULL, 0, 0, 0), (504, 9, 18, 0, 6, NULL, NULL, 0, 0, 0),
(504, 11, 19, 0, 6, NULL, NULL, 0, 0, 0), (504, 16, 20, 0, 6, NULL, NULL, 0, 0, 0);

-- Round 6: Miami Grand Prix Qualifying (Session 604)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(604, 1, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- VER
(604, 3, 2, 0, 18, NULL, 0.141, 0, 0, 0),   -- LEC
(604, 4, 3, 0, 18, NULL, 0.214, 0, 0, 0),   -- SAI
(604, 2, 4, 0, 18, NULL, 0.219, 0, 0, 0),   -- PER
(604, 5, 5, 0, 18, NULL, 0.353, 0, 0, 0),   -- NOR
(604, 6, 6, 0, 18, NULL, 0.443, 0, 0, 0),   -- PIA
(604, 7, 7, 0, 18, NULL, 0.826, 0, 0, 0),   -- RUS
(604, 9, 8, 0, 18, NULL, 0.859, 0, 0, 0),   -- HAM
(604, 13, 9, 0, 18, NULL, 1.000, 0, 0, 0),  -- HUL
(604, 11, 10, 0, 18, NULL, 1.053, 0, 0, 0), -- TSU
(604, 10, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- STR
(604, 18, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- GAS
(604, 17, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- OCO
(604, 15, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- ALB
(604, 8, 15, 0, 12, NULL, NULL, 0, 0, 0),   -- ALO
(604, 19, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- BOT
(604, 16, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- SAR
(604, 12, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- RIC
(604, 14, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- MAG
(604, 20, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- ZHO

-- Round 7: Emilia Romagna Grand Prix Qualifying (Session 704)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(704, 1, 1, 0, 21, NULL, 0.000, 0, 0, 0),   -- VER
(704, 6, 2, 0, 21, NULL, 0.074, 0, 0, 0),   -- PIA
(704, 5, 3, 0, 21, NULL, 0.091, 0, 0, 0),   -- NOR
(704, 3, 4, 0, 21, NULL, 0.224, 0, 0, 0),   -- LEC
(704, 4, 5, 0, 21, NULL, 0.487, 0, 0, 0),   -- SAI
(704, 7, 6, 0, 21, NULL, 0.490, 0, 0, 0),   -- RUS
(704, 11, 7, 0, 21, NULL, 0.651, 0, 0, 0),  -- TSU
(704, 9, 8, 0, 21, NULL, 0.749, 0, 0, 0),   -- HAM
(704, 12, 9, 0, 21, NULL, 0.793, 0, 0, 0),  -- RIC
(704, 13, 10, 0, 21, NULL, 1.026, 0, 0, 0), -- HUL
(704, 2, 11, 0, 14, NULL, NULL, 0, 0, 0),   -- PER
(704, 17, 12, 0, 14, NULL, NULL, 0, 0, 0),  -- OCO
(704, 10, 13, 0, 14, NULL, NULL, 0, 0, 0),  -- STR
(704, 15, 14, 0, 14, NULL, NULL, 0, 0, 0),  -- ALB
(704, 18, 15, 0, 14, NULL, NULL, 0, 0, 0),  -- GAS
(704, 19, 16, 0, 7, NULL, NULL, 0, 0, 0),   -- BOT
(704, 20, 17, 0, 7, NULL, NULL, 0, 0, 0),   -- ZHO
(704, 14, 18, 0, 7, NULL, NULL, 0, 0, 0),   -- MAG
(704, 8, 19, 0, 7, NULL, NULL, 0, 0, 0),    -- ALO
(704, 16, 20, 0, 7, NULL, NULL, 0, 0, 0);   -- SAR

-- Round 8: Monaco Grand Prix Qualifying (Session 804)
-- Note: Both Haas cars (HUL, MAG) were disqualified (DSQ) due to technical non-compliance.
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(804, 3, 1, 0, 24, NULL, 0.000, 0, 0, 0),   -- LEC
(804, 6, 2, 0, 24, NULL, 0.154, 0, 0, 0),   -- PIA
(804, 4, 3, 0, 24, NULL, 0.248, 0, 0, 0),   -- SAI
(804, 5, 4, 0, 24, NULL, 0.271, 0, 0, 0),   -- NOR
(804, 7, 5, 0, 24, NULL, 0.473, 0, 0, 0),   -- RUS
(804, 1, 6, 0, 24, NULL, 0.497, 0, 0, 0),   -- VER
(804, 9, 7, 0, 24, NULL, 0.521, 0, 0, 0),   -- HAM
(804, 11, 8, 0, 24, NULL, 0.603, 0, 0, 0),  -- TSU
(804, 15, 9, 0, 24, NULL, 0.810, 0, 0, 0),  -- ALB
(804, 18, 10, 0, 24, NULL, 1.051, 0, 0, 0), -- GAS
(804, 17, 11, 0, 16, NULL, NULL, 0, 0, 0),  -- OCO
(804, 12, 12, 0, 16, NULL, NULL, 0, 0, 0),  -- RIC
(804, 10, 13, 0, 16, NULL, NULL, 0, 0, 0),  -- STR
(804, 8, 14, 0, 8, NULL, NULL, 0, 0, 0),    -- ALO
(804, 16, 15, 0, 8, NULL, NULL, 0, 0, 0),   -- SAR
(804, 2, 16, 0, 8, NULL, NULL, 0, 0, 0),    -- PER
(804, 19, 17, 0, 8, NULL, NULL, 0, 0, 0),   -- BOT
(804, 20, 18, 0, 8, NULL, NULL, 0, 0, 0),   -- ZHO
(804, 13, 19, 0, 16, NULL, NULL, 0, 0, 1),  -- HUL (DSQ)
(804, 14, 20, 0, 16, NULL, NULL, 0, 0, 1);  -- MAG (DSQ)

-- Round 9: Canadian Grand Prix Qualifying (Session 904)
-- Note: RUS and VER set identical times; RUS takes pole as he set the lap first.
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(904, 7, 1, 0, 22, NULL, 0.000, 0, 0, 0),   -- RUS
(904, 1, 2, 0, 22, NULL, 0.000, 0, 0, 0),   -- VER
(904, 5, 3, 0, 22, NULL, 0.021, 0, 0, 0),   -- NOR
(904, 6, 4, 0, 22, NULL, 0.103, 0, 0, 0),   -- PIA
(904, 12, 5, 0, 22, NULL, 0.178, 0, 0, 0),  -- RIC
(904, 8, 6, 0, 22, NULL, 0.228, 0, 0, 0),   -- ALO
(904, 9, 7, 0, 22, NULL, 0.280, 0, 0, 0),   -- HAM
(904, 11, 8, 0, 22, NULL, 0.414, 0, 0, 0),  -- TSU
(904, 10, 9, 0, 22, NULL, 0.701, 0, 0, 0),  -- STR
(904, 15, 10, 0, 22, NULL, 0.796, 0, 0, 0), -- ALB
(904, 3, 11, 0, 15, NULL, NULL, 0, 0, 0),   -- LEC
(904, 4, 12, 0, 15, NULL, NULL, 0, 0, 0),   -- SAI
(904, 16, 13, 0, 15, NULL, NULL, 0, 0, 0),  -- SAR
(904, 14, 14, 0, 15, NULL, NULL, 0, 0, 0),  -- MAG
(904, 18, 15, 0, 15, NULL, NULL, 0, 0, 0),  -- GAS
(904, 2, 16, 0, 8, NULL, NULL, 0, 0, 0),    -- PER
(904, 19, 17, 0, 8, NULL, NULL, 0, 0, 0),   -- BOT
(904, 17, 18, 0, 8, NULL, NULL, 0, 0, 0),   -- OCO
(904, 13, 19, 0, 8, NULL, NULL, 0, 0, 0),   -- HUL
(904, 20, 20, 0, 8, NULL, NULL, 0, 0, 0);   -- ZHO

-- Round 10: Spanish Grand Prix Qualifying (Session 1004)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(1004, 5, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- NOR
(1004, 1, 2, 0, 18, NULL, 0.020, 0, 0, 0),   -- VER
(1004, 9, 3, 0, 18, NULL, 0.318, 0, 0, 0),   -- HAM
(1004, 7, 4, 0, 18, NULL, 0.320, 0, 0, 0),   -- RUS
(1004, 3, 5, 0, 18, NULL, 0.348, 0, 0, 0),   -- LEC
(1004, 4, 6, 0, 18, NULL, 0.353, 0, 0, 0),   -- SAI
(1004, 18, 7, 0, 18, NULL, 0.457, 0, 0, 0),  -- GAS
(1004, 2, 8, 0, 18, NULL, 0.611, 0, 0, 0),   -- PER
(1004, 17, 9, 0, 18, NULL, 0.652, 0, 0, 0),  -- OCO
(1004, 6, 10, 0, 18, NULL, NULL, 0, 0, 0),   -- PIA
(1004, 8, 11, 0, 12, NULL, NULL, 0, 0, 0),   -- ALO
(1004, 19, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- BOT
(1004, 13, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- HUL
(1004, 10, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- STR
(1004, 20, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- ZHO
(1004, 14, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- MAG
(1004, 11, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- TSU
(1004, 12, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- RIC
(1004, 15, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- ALB
(1004, 16, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- SAR

-- Round 11: Austrian Grand Prix Qualifying (Session 1104)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(1104, 1, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- VER
(1104, 5, 2, 0, 18, NULL, 0.404, 0, 0, 0),   -- NOR
(1104, 7, 3, 0, 18, NULL, 0.526, 0, 0, 0),   -- RUS
(1104, 4, 4, 0, 18, NULL, 0.537, 0, 0, 0),   -- SAI
(1104, 9, 5, 0, 18, NULL, 0.589, 0, 0, 0),   -- HAM
(1104, 3, 6, 0, 18, NULL, 0.730, 0, 0, 0),   -- LEC
(1104, 6, 7, 0, 18, NULL, 0.734, 0, 0, 0),   -- PIA
(1104, 2, 8, 0, 18, NULL, 0.888, 0, 0, 0),   -- PER
(1104, 13, 9, 0, 18, NULL, 1.071, 0, 0, 0),  -- HUL
(1104, 17, 10, 0, 18, NULL, 1.569, 0, 0, 0), -- OCO
(1104, 12, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- RIC
(1104, 14, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- MAG
(1104, 18, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- GAS
(1104, 11, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- TSU
(1104, 8, 15, 0, 12, NULL, NULL, 0, 0, 0),   -- ALO
(1104, 15, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- ALB
(1104, 10, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- STR
(1104, 19, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- BOT
(1104, 16, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- SAR
(1104, 20, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- ZHO

-- Round 12: British Grand Prix Qualifying (Session 1204)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(1204, 7, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- RUS
(1204, 9, 2, 0, 18, NULL, 0.171, 0, 0, 0),   -- HAM
(1204, 5, 3, 0, 18, NULL, 0.211, 0, 0, 0),   -- NOR
(1204, 1, 4, 0, 18, NULL, 0.384, 0, 0, 0),   -- VER
(1204, 6, 5, 0, 18, NULL, 0.418, 0, 0, 0),   -- PIA
(1204, 13, 6, 0, 18, NULL, 0.519, 0, 0, 0),  -- HUL
(1204, 4, 7, 0, 18, NULL, 0.690, 0, 0, 0),   -- SAI
(1204, 10, 8, 0, 18, NULL, 0.766, 0, 0, 0),  -- STR
(1204, 15, 9, 0, 18, NULL, 0.821, 0, 0, 0),  -- ALB
(1204, 8, 10, 0, 18, NULL, 1.098, 0, 0, 0),  -- ALO
(1204, 3, 11, 0, 12, NULL, NULL, 0, 0, 0),   -- LEC
(1204, 16, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- SAR
(1204, 11, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- TSU
(1204, 20, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- ZHO
(1204, 12, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- RIC
(1204, 19, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- BOT
(1204, 14, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- MAG
(1204, 17, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- OCO
(1204, 2, 19, 0, 6, NULL, NULL, 0, 0, 0),    -- PER
(1204, 18, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- GAS

-- Round 13: Hungarian Grand Prix Qualifying (Session 1304)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(1304, 5, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- NOR
(1304, 6, 2, 0, 18, NULL, 0.022, 0, 0, 0),   -- PIA
(1304, 1, 3, 0, 18, NULL, 0.046, 0, 0, 0),   -- VER
(1304, 4, 4, 0, 18, NULL, 0.469, 0, 0, 0),   -- SAI
(1304, 9, 5, 0, 18, NULL, 0.627, 0, 0, 0),   -- HAM
(1304, 3, 6, 0, 18, NULL, 0.678, 0, 0, 0),   -- LEC
(1304, 8, 7, 0, 18, NULL, 0.816, 0, 0, 0),   -- ALO
(1304, 10, 8, 0, 18, NULL, 1.017, 0, 0, 0),  -- STR
(1304, 12, 9, 0, 18, NULL, 1.220, 0, 0, 0),  -- RIC
(1304, 11, 10, 0, 18, NULL, 1.250, 0, 0, 0), -- TSU
(1304, 13, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- HUL
(1304, 19, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- BOT
(1304, 15, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- ALB
(1304, 16, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- SAR
(1304, 14, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- MAG
(1304, 2, 16, 0, 6, NULL, NULL, 0, 0, 0),    -- PER
(1304, 7, 17, 0, 6, NULL, NULL, 0, 0, 0),    -- RUS
(1304, 20, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- ZHO
(1304, 17, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- OCO
(1304, 18, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- GAS

-- Round 14: Belgian Grand Prix Qualifying (Session 1404)
-- Note: Verstappen (1) qualified fastest but took a 10-place grid penalty for the race. 
-- The positions below represent the session's qualifying classification.
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(1404, 1, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- VER
(1404, 3, 2, 0, 18, NULL, 0.595, 0, 0, 0),   -- LEC
(1404, 2, 3, 0, 18, NULL, 0.606, 0, 0, 0),   -- PER
(1404, 9, 4, 0, 18, NULL, 0.676, 0, 0, 0),   -- HAM
(1404, 5, 5, 0, 18, NULL, 0.822, 0, 0, 0),   -- NOR
(1404, 6, 6, 0, 18, NULL, 0.868, 0, 0, 0),   -- PIA
(1404, 7, 7, 0, 18, NULL, 1.025, 0, 0, 0),   -- RUS
(1404, 4, 8, 0, 18, NULL, 1.318, 0, 0, 0),   -- SAI
(1404, 8, 9, 0, 18, NULL, 1.606, 0, 0, 0),   -- ALO
(1404, 17, 10, 0, 18, NULL, 1.651, 0, 0, 0), -- OCO
(1404, 15, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- ALB
(1404, 18, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- GAS
(1404, 12, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- RIC
(1404, 19, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- BOT
(1404, 10, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- STR
(1404, 13, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- HUL
(1404, 14, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- MAG
(1404, 16, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- SAR
(1404, 20, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- ZHO
(1404, 11, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- TSU

-- Round 15: Dutch Grand Prix Qualifying (Session 1504)
-- Note: Albon (15) originally qualified 8th but was disqualified (DSQ) due to a technical infringement.
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(1504, 5, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- NOR
(1504, 1, 2, 0, 18, NULL, 0.356, 0, 0, 0),   -- VER
(1504, 6, 3, 0, 18, NULL, 0.499, 0, 0, 0),   -- PIA
(1504, 7, 4, 0, 18, NULL, 0.571, 0, 0, 0),   -- RUS
(1504, 2, 5, 0, 18, NULL, 0.743, 0, 0, 0),   -- PER
(1504, 3, 6, 0, 18, NULL, 0.909, 0, 0, 0),   -- LEC
(1504, 8, 7, 0, 18, NULL, 0.960, 0, 0, 0),   -- ALO
(1504, 10, 8, 0, 18, NULL, 1.184, 0, 0, 0),  -- STR
(1504, 18, 9, 0, 18, NULL, 1.304, 0, 0, 0),  -- GAS
(1504, 4, 10, 0, 12, NULL, NULL, 0, 0, 0),   -- SAI
(1504, 11, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- TSU
(1504, 13, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- HUL
(1504, 14, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- MAG
(1504, 12, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- RIC
(1504, 17, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- OCO
(1504, 19, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- BOT
(1504, 20, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- ZHO
(1504, 16, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- SAR
(1504, 15, 19, 0, 18, NULL, NULL, 0, 0, 1);  -- ALB (DSQ)

-- Round 16: Italian Grand Prix Qualifying (Session 1604)
-- Note: Franco Colapinto (22) replaces Logan Sargeant from this point onwards.
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(1604, 5, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- NOR
(1604, 6, 2, 0, 18, NULL, 0.109, 0, 0, 0),   -- PIA
(1604, 7, 3, 0, 18, NULL, 0.113, 0, 0, 0),   -- RUS
(1604, 3, 4, 0, 18, NULL, 0.134, 0, 0, 0),   -- LEC
(1604, 4, 5, 0, 18, NULL, 0.140, 0, 0, 0),   -- SAI
(1604, 9, 6, 0, 18, NULL, 0.186, 0, 0, 0),   -- HAM
(1604, 1, 7, 0, 18, NULL, 0.695, 0, 0, 0),   -- VER
(1604, 2, 8, 0, 18, NULL, 0.735, 0, 0, 0),   -- PER
(1604, 15, 9, 0, 18, NULL, 0.972, 0, 0, 0),  -- ALB
(1604, 13, 10, 0, 18, NULL, 1.042, 0, 0, 0), -- HUL
(1604, 8, 11, 0, 12, NULL, NULL, 0, 0, 0),   -- ALO
(1604, 12, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- RIC
(1604, 14, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- MAG
(1604, 18, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- GAS
(1604, 17, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- OCO
(1604, 11, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- TSU
(1604, 10, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- STR
(1604, 22, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- COL
(1604, 19, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- BOT
(1604, 20, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- ZHO

-- Round 17: Azerbaijan Grand Prix Qualifying (Session 1704)
-- Note: Oliver Bearman (21) replaces Kevin Magnussen (race ban). 
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(1704, 3, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- LEC
(1704, 6, 2, 0, 18, NULL, 0.321, 0, 0, 0),   -- PIA
(1704, 4, 3, 0, 18, NULL, 0.440, 0, 0, 0),   -- SAI
(1704, 2, 4, 0, 18, NULL, 0.448, 0, 0, 0),   -- PER
(1704, 7, 5, 0, 18, NULL, 0.509, 0, 0, 0),   -- RUS
(1704, 1, 6, 0, 18, NULL, 0.658, 0, 0, 0),   -- VER
(1704, 8, 7, 0, 18, NULL, 1.004, 0, 0, 0),   -- ALO
(1704, 22, 8, 0, 18, NULL, 1.165, 0, 0, 0),  -- COL
(1704, 15, 9, 0, 18, NULL, 1.494, 0, 0, 0),  -- ALB
(1704, 21, 10, 0, 18, NULL, 1.603, 0, 0, 0), -- BEA
(1704, 11, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- TSU
(1704, 13, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- HUL
(1704, 10, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- STR
(1704, 12, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- RIC
(1704, 5, 15, 0, 6, NULL, NULL, 0, 0, 0),    -- NOR
(1704, 19, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- BOT
(1704, 20, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- ZHO
(1704, 18, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- GAS
(1704, 9, 19, 0, 6, NULL, NULL, 0, 0, 0),    -- HAM
(1704, 17, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- OCO

-- Round 18: Singapore Grand Prix Qualifying (Session 1804)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(1804, 5, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- NOR
(1804, 1, 2, 0, 18, NULL, 0.203, 0, 0, 0),   -- VER
(1804, 9, 3, 0, 18, NULL, 0.316, 0, 0, 0),   -- HAM
(1804, 7, 4, 0, 18, NULL, 0.342, 0, 0, 0),   -- RUS
(1804, 6, 5, 0, 18, NULL, 0.428, 0, 0, 0),   -- PIA
(1804, 13, 6, 0, 18, NULL, 0.590, 0, 0, 0),  -- HUL
(1804, 8, 7, 0, 18, NULL, 0.689, 0, 0, 0),   -- ALO
(1804, 11, 8, 0, 18, NULL, 0.829, 0, 0, 0),  -- TSU
(1804, 3, 9, 0, 18, NULL, NULL, 0, 0, 0),    -- LEC (No time set in Q3)
(1804, 4, 10, 0, 18, NULL, NULL, 0, 0, 0),   -- SAI (No time set in Q3)
(1804, 15, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- ALB
(1804, 22, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- COL
(1804, 2, 13, 0, 12, NULL, NULL, 0, 0, 0),   -- PER
(1804, 14, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- MAG
(1804, 17, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- OCO
(1804, 12, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- RIC
(1804, 10, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- STR
(1804, 18, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- GAS
(1804, 19, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- BOT
(1804, 20, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- ZHO

-- Round 19: United States Grand Prix Qualifying (Session 1904)
-- Note: Liam Lawson (23) replaces Daniel Ricciardo for the remainder of the season.
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(1904, 5, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- NOR
(1904, 1, 2, 0, 18, NULL, 0.031, 0, 0, 0),   -- VER
(1904, 4, 3, 0, 18, NULL, 0.322, 0, 0, 0),   -- SAI
(1904, 3, 4, 0, 18, NULL, 0.410, 0, 0, 0),   -- LEC
(1904, 6, 5, 0, 18, NULL, 0.620, 0, 0, 0),   -- PIA
(1904, 18, 6, 0, 18, NULL, 0.688, 0, 0, 0),  -- GAS
(1904, 8, 7, 0, 18, NULL, 0.979, 0, 0, 0),   -- ALO
(1904, 14, 8, 0, 18, NULL, 1.151, 0, 0, 0),  -- MAG
(1904, 2, 9, 0, 18, NULL, NULL, 0, 0, 0),    -- PER
(1904, 11, 10, 0, 18, NULL, NULL, 0, 0, 0),  -- TSU
(1904, 13, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- HUL
(1904, 17, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- OCO
(1904, 10, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- STR
(1904, 15, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- ALB
(1904, 22, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- COL
(1904, 19, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- BOT
(1904, 9, 17, 0, 6, NULL, NULL, 0, 0, 0),    -- HAM
(1904, 20, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- ZHO
(1904, 23, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- LAW
(1904, 7, 20, 0, 18, NULL, 0.644, 0, 0, 0);  -- RUS (Pit lane start after crash)

-- Round 20: Mexico City Grand Prix Qualifying (Session 2004)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(2004, 4, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- SAI
(2004, 1, 2, 0, 18, NULL, 0.225, 0, 0, 0),   -- VER
(2004, 5, 3, 0, 18, NULL, 0.314, 0, 0, 0),   -- NOR
(2004, 3, 4, 0, 18, NULL, 0.319, 0, 0, 0),   -- LEC
(2004, 7, 5, 0, 18, NULL, 0.410, 0, 0, 0),   -- RUS
(2004, 9, 6, 0, 18, NULL, 0.705, 0, 0, 0),   -- HAM
(2004, 14, 7, 0, 18, NULL, 0.940, 0, 0, 0),  -- MAG
(2004, 18, 8, 0, 18, NULL, 0.946, 0, 0, 0),  -- GAS
(2004, 15, 9, 0, 18, NULL, 1.119, 0, 0, 0),  -- ALB
(2004, 13, 10, 0, 18, NULL, 1.419, 0, 0, 0), -- HUL
(2004, 11, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- TSU
(2004, 23, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- LAW
(2004, 8, 13, 0, 12, NULL, NULL, 0, 0, 0),   -- ALO
(2004, 10, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- STR
(2004, 19, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- BOT
(2004, 22, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- COL
(2004, 6, 17, 0, 6, NULL, NULL, 0, 0, 0),    -- PIA
(2004, 2, 18, 0, 6, NULL, NULL, 0, 0, 0),    -- PER
(2004, 20, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- ZHO
(2004, 17, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- OCO

-- Round 21: São Paulo Grand Prix Qualifying (Session 2104)
-- Note: Session was delayed and run in heavy rain. Bearman (21) substituted for Magnussen.
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(2104, 5, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- NOR
(2104, 7, 2, 0, 18, NULL, 0.173, 0, 0, 0),   -- RUS
(2104, 11, 3, 0, 18, NULL, 0.706, 0, 0, 0),  -- TSU
(2104, 17, 4, 0, 18, NULL, 1.070, 0, 0, 0),  -- OCO
(2104, 23, 5, 0, 18, NULL, 1.079, 0, 0, 0),  -- LAW
(2104, 3, 6, 0, 18, NULL, 1.120, 0, 0, 0),   -- LEC
(2104, 15, 7, 0, 18, NULL, 1.252, 0, 0, 0),  -- ALB
(2104, 6, 8, 0, 18, NULL, 1.281, 0, 0, 0),   -- PIA
(2104, 8, 9, 0, 18, NULL, 5.593, 0, 0, 0),   -- ALO
(2104, 10, 10, 0, 18, NULL, NULL, 0, 0, 0),  -- STR
(2104, 19, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- BOT
(2104, 1, 12, 0, 12, NULL, NULL, 0, 0, 0),   -- VER
(2104, 2, 13, 0, 12, NULL, NULL, 0, 0, 0),   -- PER
(2104, 4, 14, 0, 12, NULL, NULL, 0, 0, 0),   -- SAI
(2104, 18, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- GAS
(2104, 9, 16, 0, 6, NULL, NULL, 0, 0, 0),    -- HAM
(2104, 21, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- BEA
(2104, 22, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- COL
(2104, 13, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- HUL
(2104, 20, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- ZHO

-- Round 22: Las Vegas Grand Prix Qualifying (Session 2204)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(2204, 7, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- RUS
(2204, 4, 2, 0, 18, NULL, 0.098, 0, 0, 0),   -- SAI
(2204, 18, 3, 0, 18, NULL, 0.352, 0, 0, 0),  -- GAS
(2204, 3, 4, 0, 18, NULL, 0.471, 0, 0, 0),   -- LEC
(2204, 1, 5, 0, 18, NULL, 0.485, 0, 0, 0),   -- VER
(2204, 5, 6, 0, 18, NULL, 0.696, 0, 0, 0),   -- NOR
(2204, 11, 7, 0, 18, NULL, 0.717, 0, 0, 0),  -- TSU
(2204, 6, 8, 0, 18, NULL, 0.721, 0, 0, 0),   -- PIA
(2204, 13, 9, 0, 18, NULL, 0.750, 0, 0, 0),  -- HUL
(2204, 9, 10, 0, 18, NULL, 15.794, 0, 0, 0), -- HAM
(2204, 17, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- OCO
(2204, 14, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- MAG
(2204, 20, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- ZHO
(2204, 23, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- LAW
(2204, 2, 15, 0, 12, NULL, NULL, 0, 0, 0),   -- PER
(2204, 8, 16, 0, 6, NULL, NULL, 0, 0, 0),    -- ALO
(2204, 15, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- ALB
(2204, 19, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- BOT
(2204, 10, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- STR
(2204, 22, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- COL

-- Round 23: Qatar Grand Prix Qualifying (Session 2304)
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(2304, 7, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- RUS
(2304, 1, 2, 0, 18, NULL, 0.055, 0, 0, 0),   -- VER
(2304, 5, 3, 0, 18, NULL, 0.252, 0, 0, 0),   -- NOR
(2304, 6, 4, 0, 18, NULL, 0.309, 0, 0, 0),   -- PIA
(2304, 3, 5, 0, 18, NULL, 0.332, 0, 0, 0),   -- LEC
(2304, 9, 6, 0, 18, NULL, 0.491, 0, 0, 0),   -- HAM
(2304, 4, 7, 0, 18, NULL, 0.521, 0, 0, 0),   -- SAI
(2304, 8, 8, 0, 18, NULL, 0.731, 0, 0, 0),   -- ALO
(2304, 2, 9, 0, 18, NULL, 0.905, 0, 0, 0),   -- PER
(2304, 14, 10, 0, 18, NULL, 0.980, 0, 0, 0), -- MAG
(2304, 18, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- GAS
(2304, 20, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- ZHO
(2304, 19, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- BOT
(2304, 11, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- TSU
(2304, 10, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- STR
(2304, 15, 16, 0, 6, NULL, NULL, 0, 0, 0),   -- ALB
(2304, 23, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- LAW
(2304, 13, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- HUL
(2304, 22, 19, 0, 6, NULL, NULL, 0, 0, 0),   -- COL
(2304, 17, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- OCO

-- Round 24: Abu Dhabi Grand Prix Qualifying (Session 2404)
-- Note: Jack Doohan (24) replaces Esteban Ocon for the final race.
INSERT INTO Session_result (session_key, driver_id, position, points, number_of_laps, duration, gap_to_the_leader, dnf, dns, dsq) VALUES
(2404, 5, 1, 0, 18, NULL, 0.000, 0, 0, 0),   -- NOR
(2404, 6, 2, 0, 18, NULL, 0.209, 0, 0, 0),   -- PIA
(2404, 4, 3, 0, 18, NULL, 0.229, 0, 0, 0),   -- SAI
(2404, 1, 4, 0, 18, NULL, 0.350, 0, 0, 0),   -- VER
(2404, 18, 5, 0, 18, NULL, 0.389, 0, 0, 0),  -- GAS
(2404, 7, 6, 0, 18, NULL, 0.537, 0, 0, 0),   -- RUS
(2404, 13, 7, 0, 18, NULL, 0.569, 0, 0, 0),  -- HUL
(2404, 8, 8, 0, 18, NULL, 0.601, 0, 0, 0),   -- ALO
(2404, 19, 9, 0, 18, NULL, 0.810, 0, 0, 0),  -- BOT
(2404, 2, 10, 0, 18, NULL, 0.871, 0, 0, 0),  -- PER
(2404, 11, 11, 0, 12, NULL, NULL, 0, 0, 0),  -- TSU
(2404, 23, 12, 0, 12, NULL, NULL, 0, 0, 0),  -- LAW
(2404, 10, 13, 0, 12, NULL, NULL, 0, 0, 0),  -- STR
(2404, 14, 14, 0, 12, NULL, NULL, 0, 0, 0),  -- MAG
(2404, 20, 15, 0, 12, NULL, NULL, 0, 0, 0),  -- ZHO
(2404, 9, 16, 0, 6, NULL, NULL, 0, 0, 0),    -- HAM
(2404, 24, 17, 0, 6, NULL, NULL, 0, 0, 0),   -- DOO
(2404, 15, 18, 0, 6, NULL, NULL, 0, 0, 0),   -- ALB
(2404, 3, 19, 0, 6, NULL, NULL, 0, 0, 0),    -- LEC
(2404, 22, 20, 0, 6, NULL, NULL, 0, 0, 0);   -- COL

-- sprint race data insertion

-- =======================================================
-- Round 5: Chinese Grand Prix Sprint Results (Session 503)
-- =======================================================
INSERT INTO Session_Result (session_key, driver_id, position, points) VALUES
(503, 1, 1, 8), -- Verstappen
(503, 9, 2, 7), -- Hamilton
(503, 2, 3, 6), -- Perez
(503, 3, 4, 5), -- Leclerc
(503, 4, 5, 4), -- Sainz
(503, 5, 6, 3), -- Norris
(503, 6, 7, 2), -- Piastri
(503, 7, 8, 1); -- Russell

-- =======================================================
-- Round 6: Miami Grand Prix Sprint Results (Session 603)
-- =======================================================
INSERT INTO Session_Result (session_key, driver_id, position, points) VALUES
(603, 1,  1, 8), -- Verstappen
(603, 3,  2, 7), -- Leclerc
(603, 2,  3, 6), -- Perez
(603, 12, 4, 5), -- Ricciardo
(603, 4,  5, 4), -- Sainz
(603, 6,  6, 3), -- Piastri
(603, 13, 7, 2), -- Hülkenberg
(603, 11, 8, 1); -- Tsunoda

-- =======================================================
-- Round 11: Austrian Grand Prix Sprint Results (Session 1103)
-- =======================================================
INSERT INTO Session_Result (session_key, driver_id, position, points) VALUES
(1103, 1, 1, 8), -- Verstappen
(1103, 6, 2, 7), -- Piastri
(1103, 5, 3, 6), -- Norris
(1103, 7, 4, 5), -- Russell
(1103, 4, 5, 4), -- Sainz
(1103, 9, 6, 3), -- Hamilton
(1103, 3, 7, 2), -- Leclerc
(1103, 2, 8, 1); -- Perez

-- =======================================================
-- Round 19: United States GP (Austin) Sprint Results (Session 1903)
-- =======================================================
INSERT INTO Session_Result (session_key, driver_id, position, points) VALUES
(1903, 1,  1, 8), -- Verstappen
(1903, 4,  2, 7), -- Sainz
(1903, 5,  3, 6), -- Norris
(1903, 3,  4, 5), -- Leclerc
(1903, 7,  5, 4), -- Russell
(1903, 6,  6, 3), -- Piastri
(1903, 14, 7, 2), -- Magnussen
(1903, 18, 8, 1); -- Gasly

-- =======================================================
-- Round 21: São Paulo Grand Prix Sprint Results (Session 2103)
-- =======================================================
INSERT INTO Session_Result (session_key, driver_id, position, points) VALUES
(2103, 5,  1, 8), -- Norris
(2103, 6,  2, 7), -- Piastri
(2103, 3,  3, 6), -- Leclerc
(2103, 1,  4, 5), -- Verstappen
(2103, 4,  5, 4), -- Sainz
(2103, 7,  6, 3), -- Russell
(2103, 18, 7, 2), -- Gasly
(2103, 2,  8, 1); -- Perez

-- =======================================================
-- Round 23: Qatar Grand Prix Sprint Results (Session 2303)
-- =======================================================
INSERT INTO Session_Result (session_key, driver_id, position, points) VALUES
(2303, 6,  1, 8), -- Piastri
(2303, 5,  2, 7), -- Norris
(2303, 7,  3, 6), -- Russell
(2303, 4,  4, 5), -- Sainz
(2303, 9,  5, 4), -- Hamilton
(2303, 3,  6, 3), -- Leclerc
(2303, 13, 7, 2), -- Hülkenberg
(2303, 1,  8, 1); -- Verstappen
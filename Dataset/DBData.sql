-- ============================================================
-- F1 Database Data Insertion (Fixed)
-- ============================================================

-- Insert First 5 Meetings (Grand Prix) of 2024
INSERT INTO Meeting (
    meeting_key, circuit_id, circuit_type, circuit_short_name,
    country_key, country_name, country_code, location,
    meeting_name, year, date_start, date_end, ticket
) VALUES
-- Round 1: Bahrain Grand Prix
(1, 1, 'Permanent', 'Sakhir', 1, 'Bahrain', 'BHR', 'Sakhir', 'Bahrain Grand Prix', 2024, '2024-02-29 00:00:00', '2024-03-02 23:59:59', 'https://tickets.formula1.com/bahrain'),

-- Round 2: Saudi Arabian Grand Prix
(2, 2, 'Street', 'Jeddah', 2, 'Saudi Arabia', 'SAU', 'Jeddah', 'Saudi Arabian Grand Prix', 2024, '2024-03-07 00:00:00', '2024-03-09 23:59:59', 'https://tickets.formula1.com/saudiarabia'),

-- Round 3: Australian Grand Prix
(3, 3, 'Street', 'Melbourne', 3, 'Australia', 'AUS', 'Melbourne', 'Australian Grand Prix', 2024, '2024-03-22 00:00:00', '2024-03-24 23:59:59', 'https://tickets.formula1.com/australia'),

-- Round 4: Japanese Grand Prix
(4, 4, 'Permanent', 'Suzuka', 4, 'Japan', 'JPN', 'Suzuka', 'Japanese Grand Prix', 2024, '2024-04-05 00:00:00', '2024-04-07 23:59:59', 'https://tickets.formula1.com/japan'),

-- Round 5: Chinese Grand Prix
(5, 5, 'Permanent', 'Shanghai', 5, 'China', 'CHN', 'Shanghai', 'Chinese Grand Prix', 2024, '2024-04-19 00:00:00', '2024-04-21 23:59:59', 'https://tickets.formula1.com/china'),

-- Round 6: Miami Grand Prix
(6, 6, 'Street', 'Miami', 6, 'USA', 'USA', 'Miami', 'Miami Grand Prix', 2024, '2024-05-03 00:00:00', '2024-05-05 23:59:59', 'https://tickets.formula1.com/miami'),

-- Round 7: Emilia Romagna Grand Prix
(7, 7, 'Permanent', 'Imola', 7, 'Italy', 'ITA', 'Imola', 'Emilia Romagna Grand Prix', 2024, '2024-05-17 00:00:00', '2024-05-19 23:59:59', 'https://tickets.formula1.com/italy'),

-- Round 8: Monaco Grand Prix
(8, 8, 'Street', 'Monte Carlo', 8, 'Monaco', 'MON', 'Monte Carlo', 'Monaco Grand Prix', 2024, '2024-05-24 00:00:00', '2024-05-26 23:59:59', 'https://tickets.formula1.com/monaco'),

-- Round 9: Canadian Grand Prix
(9, 9, 'Street', 'Montreal', 9, 'Canada', 'CAN', 'Montreal', 'Canadian Grand Prix', 2024, '2024-06-07 00:00:00', '2024-06-09 23:59:59', 'https://tickets.formula1.com/canada'),

-- Round 10: Spanish Grand Prix
(10, 10, 'Permanent', 'Barcelona', 10, 'Spain', 'ESP', 'Barcelona', 'Spanish Grand Prix', 2024, '2024-06-21 00:00:00', '2024-06-23 23:59:59', 'https://tickets.formula1.com/spain'),

-- Round 11: Austrian Grand Prix
(11, 11, 'Permanent', 'Spielberg', 11, 'Austria', 'AUT', 'Spielberg', 'Austrian Grand Prix', 2024, '2024-06-28 00:00:00', '2024-06-30 23:59:59', 'https://tickets.formula1.com/austria'),

-- Round 12: British Grand Prix
(12, 12, 'Permanent', 'Silverstone', 12, 'Great Britain', 'GBR', 'Silverstone', 'British Grand Prix', 2024, '2024-07-05 00:00:00', '2024-07-07 23:59:59', 'https://tickets.formula1.com/great-britain'),

-- Round 13: Hungarian Grand Prix
(13, 13, 'Permanent', 'Budapest', 13, 'Hungary', 'HUN', 'Budapest', 'Hungarian Grand Prix', 2024, '2024-07-19 00:00:00', '2024-07-21 23:59:59', 'https://tickets.formula1.com/hungary'),

-- Round 14: Belgian Grand Prix
(14, 14, 'Permanent', 'Spa-Francorchamps', 14, 'Belgium', 'BEL', 'Spa', 'Belgian Grand Prix', 2024, '2024-07-26 00:00:00', '2024-07-28 23:59:59', 'https://tickets.formula1.com/belgium'),

-- Round 15: Dutch Grand Prix
(15, 15, 'Permanent', 'Zandvoort', 15, 'Netherlands', 'NLD', 'Zandvoort', 'Dutch Grand Prix', 2024, '2024-08-23 00:00:00', '2024-08-25 23:59:59', 'https://tickets.formula1.com/netherlands'),

-- Round 16: Italian Grand Prix
(16, 16, 'Permanent', 'Monza', 16, 'Italy', 'ITA', 'Monza', 'Italian Grand Prix', 2024, '2024-08-30 00:00:00', '2024-09-01 23:59:59', 'https://tickets.formula1.com/italy-monza'),

-- Round 17: Azerbaijan Grand Prix
(17, 17, 'Street', 'Baku', 17, 'Azerbaijan', 'AZE', 'Baku', 'Azerbaijan Grand Prix', 2024, '2024-09-13 00:00:00', '2024-09-15 23:59:59', 'https://tickets.formula1.com/azerbaijan'),

-- Round 18: Singapore Grand Prix
(18, 18, 'Street', 'Marina Bay', 18, 'Singapore', 'SGP', 'Marina Bay', 'Singapore Grand Prix', 2024, '2024-09-20 00:00:00', '2024-09-22 23:59:59', 'https://tickets.formula1.com/singapore'),

-- Round 19: United States Grand Prix
(19, 19, 'Permanent', 'Austin', 6, 'USA', 'USA', 'Austin', 'United States Grand Prix', 2024, '2024-10-18 00:00:00', '2024-10-20 23:59:59', 'https://tickets.formula1.com/united-states'),

-- Round 20: Mexico City Grand Prix
(20, 20, 'Permanent', 'Mexico City', 20, 'Mexico', 'MEX', 'Mexico City', 'Mexico City Grand Prix', 2024, '2024-10-25 00:00:00', '2024-10-27 23:59:59', 'https://tickets.formula1.com/mexico'),

-- Round 21: São Paulo Grand Prix
(21, 21, 'Permanent', 'Interlagos', 21, 'Brazil', 'BRA', 'São Paulo', 'São Paulo Grand Prix', 2024, '2024-11-01 00:00:00', '2024-11-03 23:59:59', 'https://tickets.formula1.com/brazil'),

-- Round 22: Las Vegas Grand Prix
(22, 22, 'Street', 'Las Vegas', 6, 'USA', 'USA', 'Las Vegas', 'Las Vegas Grand Prix', 2024, '2024-11-21 00:00:00', '2024-11-23 23:59:59', 'https://tickets.formula1.com/las-vegas'),

-- Round 23: Qatar Grand Prix
(23, 23, 'Permanent', 'Lusail', 23, 'Qatar', 'QAT', 'Lusail', 'Qatar Grand Prix', 2024, '2024-11-29 00:00:00', '2024-12-01 23:59:59', 'https://tickets.formula1.com/qatar'),

-- Round 24: Abu Dhabi Grand Prix
(24, 24, 'Permanent', 'Yas Marina', 24, 'UAE', 'ARE', 'Abu Dhabi', 'Abu Dhabi Grand Prix', 2024, '2024-12-06 00:00:00', '2024-12-08 23:59:59', 'https://tickets.formula1.com/abu-dhabi');

-- Insert Sessions for the First 5 Meetings of 2024
INSERT INTO Session (
    session_key, session_name, session_type, date_start, date_end, meeting_key
) VALUES
-- Bahrain Grand Prix Sessions (Meeting Key: 1)
(101, 'Practice 1', 'Practice', '2024-02-29 14:30:00', '2024-02-29 15:30:00', 1),
(102, 'Practice 2', 'Practice', '2024-02-29 18:00:00', '2024-02-29 19:00:00', 1),
(103, 'Practice 3', 'Practice', '2024-03-01 15:30:00', '2024-03-01 16:30:00', 1),
(104, 'Qualifying', 'Qualifying', '2024-03-01 19:00:00', '2024-03-01 20:00:00', 1),
(105, 'Race', 'Race', '2024-03-02 18:00:00', '2024-03-02 20:00:00', 1),

-- Saudi Arabian Grand Prix Sessions (Meeting Key: 2)
(201, 'Practice 1', 'Practice', '2024-03-07 16:30:00', '2024-03-07 17:30:00', 2),
(202, 'Practice 2', 'Practice', '2024-03-07 20:00:00', '2024-03-07 21:00:00', 2),
(203, 'Practice 3', 'Practice', '2024-03-08 16:30:00', '2024-03-08 17:30:00', 2),
(204, 'Qualifying', 'Qualifying', '2024-03-08 20:00:00', '2024-03-08 21:00:00', 2),
(205, 'Race', 'Race', '2024-03-09 20:00:00', '2024-03-09 22:00:00', 2),

-- Australian Grand Prix Sessions (Meeting Key: 3)
(301, 'Practice 1', 'Practice', '2024-03-22 12:30:00', '2024-03-22 13:30:00', 3),
(302, 'Practice 2', 'Practice', '2024-03-22 16:00:00', '2024-03-22 17:00:00', 3),
(303, 'Practice 3', 'Practice', '2024-03-23 12:30:00', '2024-03-23 13:30:00', 3),
(304, 'Qualifying', 'Qualifying', '2024-03-23 16:00:00', '2024-03-23 17:00:00', 3),
(305, 'Race', 'Race', '2024-03-24 15:00:00', '2024-03-24 17:00:00', 3),

-- Japanese Grand Prix Sessions (Meeting Key: 4)
(401, 'Practice 1', 'Practice', '2024-04-05 11:30:00', '2024-04-05 12:30:00', 4),
(402, 'Practice 2', 'Practice', '2024-04-05 15:00:00', '2024-04-05 16:00:00', 4),
(403, 'Practice 3', 'Practice', '2024-04-06 11:30:00', '2024-04-06 12:30:00', 4),
(404, 'Qualifying', 'Qualifying', '2024-04-06 15:00:00', '2024-04-06 16:00:00', 4),
(405, 'Race', 'Race', '2024-04-07 14:00:00', '2024-04-07 16:00:00', 4),

-- Chinese Grand Prix Sessions (Meeting Key: 5) - *Sprint Weekend*
(501, 'Practice 1', 'Practice', '2024-04-19 11:30:00', '2024-04-19 12:30:00', 5),
(502, 'Sprint Qualifying', 'Qualifying', '2024-04-19 15:30:00', '2024-04-19 16:15:00', 5),
(503, 'Sprint', 'Race', '2024-04-20 11:00:00', '2024-04-20 12:00:00', 5),
(504, 'Qualifying', 'Qualifying', '2024-04-20 15:00:00', '2024-04-20 16:00:00', 5),
(505, 'Race', 'Race', '2024-04-21 15:00:00', '2024-04-21 17:00:00', 5),

(601, 'Practice 1', 'Practice', '2024-05-03 12:30:00', '2024-05-03 13:30:00', 6),
(602, 'Sprint Qualifying', 'Qualifying', '2024-05-03 16:30:00', '2024-05-03 17:15:00', 6),
(603, 'Sprint', 'Race', '2024-05-04 12:00:00', '2024-05-04 13:00:00', 6),
(604, 'Qualifying', 'Qualifying', '2024-05-04 16:00:00', '2024-05-04 17:00:00', 6),
(605, 'Race', 'Race', '2024-05-05 16:00:00', '2024-05-05 18:00:00', 6),

-- Emilia Romagna Grand Prix Sessions (Meeting Key: 7)
(701, 'Practice 1', 'Practice', '2024-05-17 13:30:00', '2024-05-17 14:30:00', 7),
(702, 'Practice 2', 'Practice', '2024-05-17 17:00:00', '2024-05-17 18:00:00', 7),
(703, 'Practice 3', 'Practice', '2024-05-18 12:30:00', '2024-05-18 13:30:00', 7),
(704, 'Qualifying', 'Qualifying', '2024-05-18 16:00:00', '2024-05-18 17:00:00', 7),
(705, 'Race', 'Race', '2024-05-19 15:00:00', '2024-05-19 17:00:00', 7),

-- Monaco Grand Prix Sessions (Meeting Key: 8)
(801, 'Practice 1', 'Practice', '2024-05-24 13:30:00', '2024-05-24 14:30:00', 8),
(802, 'Practice 2', 'Practice', '2024-05-24 17:00:00', '2024-05-24 18:00:00', 8),
(803, 'Practice 3', 'Practice', '2024-05-25 12:30:00', '2024-05-25 13:30:00', 8),
(804, 'Qualifying', 'Qualifying', '2024-05-25 16:00:00', '2024-05-25 17:00:00', 8),
(805, 'Race', 'Race', '2024-05-26 15:00:00', '2024-05-26 17:00:00', 8),

-- Canadian Grand Prix Sessions (Meeting Key: 9)
(901, 'Practice 1', 'Practice', '2024-06-07 13:30:00', '2024-06-07 14:30:00', 9),
(902, 'Practice 2', 'Practice', '2024-06-07 17:00:00', '2024-06-07 18:00:00', 9),
(903, 'Practice 3', 'Practice', '2024-06-08 12:30:00', '2024-06-08 13:30:00', 9),
(904, 'Qualifying', 'Qualifying', '2024-06-08 16:00:00', '2024-06-08 17:00:00', 9),
(905, 'Race', 'Race', '2024-06-09 14:00:00', '2024-06-09 16:00:00', 9),

-- Spanish Grand Prix Sessions (Meeting Key: 10)
(1001, 'Practice 1', 'Practice', '2024-06-21 13:30:00', '2024-06-21 14:30:00', 10),
(1002, 'Practice 2', 'Practice', '2024-06-21 17:00:00', '2024-06-21 18:00:00', 10),
(1003, 'Practice 3', 'Practice', '2024-06-22 12:30:00', '2024-06-22 13:30:00', 10),
(1004, 'Qualifying', 'Qualifying', '2024-06-22 16:00:00', '2024-06-22 17:00:00', 10),
(1005, 'Race', 'Race', '2024-06-23 15:00:00', '2024-06-23 17:00:00', 10),

-- Austrian Grand Prix Sessions (Meeting Key: 11) - *Sprint Weekend*
(1101, 'Practice 1', 'Practice', '2024-06-28 12:30:00', '2024-06-28 13:30:00', 11),
(1102, 'Sprint Qualifying', 'Qualifying', '2024-06-28 16:30:00', '2024-06-28 17:15:00', 11),
(1103, 'Sprint', 'Race', '2024-06-29 12:00:00', '2024-06-29 13:00:00', 11),
(1104, 'Qualifying', 'Qualifying', '2024-06-29 16:00:00', '2024-06-29 17:00:00', 11),
(1105, 'Race', 'Race', '2024-06-30 15:00:00', '2024-06-30 17:00:00', 11),

-- British Grand Prix Sessions (Meeting Key: 12)
(1201, 'Practice 1', 'Practice', '2024-07-05 12:30:00', '2024-07-05 13:30:00', 12),
(1202, 'Practice 2', 'Practice', '2024-07-05 16:00:00', '2024-07-05 17:00:00', 12),
(1203, 'Practice 3', 'Practice', '2024-07-06 11:30:00', '2024-07-06 12:30:00', 12),
(1204, 'Qualifying', 'Qualifying', '2024-07-06 15:00:00', '2024-07-06 16:00:00', 12),
(1205, 'Race', 'Race', '2024-07-07 15:00:00', '2024-07-07 17:00:00', 12),

-- Hungarian Grand Prix Sessions (Meeting Key: 13)
(1301, 'Practice 1', 'Practice', '2024-07-19 13:30:00', '2024-07-19 14:30:00', 13),
(1302, 'Practice 2', 'Practice', '2024-07-19 17:00:00', '2024-07-19 18:00:00', 13),
(1303, 'Practice 3', 'Practice', '2024-07-20 12:30:00', '2024-07-20 13:30:00', 13),
(1304, 'Qualifying', 'Qualifying', '2024-07-20 16:00:00', '2024-07-20 17:00:00', 13),
(1305, 'Race', 'Race', '2024-07-21 15:00:00', '2024-07-21 17:00:00', 13),

-- Belgian Grand Prix Sessions (Meeting Key: 14)
(1401, 'Practice 1', 'Practice', '2024-07-26 13:30:00', '2024-07-26 14:30:00', 14),
(1402, 'Practice 2', 'Practice', '2024-07-26 17:00:00', '2024-07-26 18:00:00', 14),
(1403, 'Practice 3', 'Practice', '2024-07-27 12:30:00', '2024-07-27 13:30:00', 14),
(1404, 'Qualifying', 'Qualifying', '2024-07-27 16:00:00', '2024-07-27 17:00:00', 14),
(1405, 'Race', 'Race', '2024-07-28 15:00:00', '2024-07-28 17:00:00', 14),

-- Dutch Grand Prix Sessions (Meeting Key: 15)
(1501, 'Practice 1', 'Practice', '2024-08-23 12:30:00', '2024-08-23 13:30:00', 15),
(1502, 'Practice 2', 'Practice', '2024-08-23 16:00:00', '2024-08-23 17:00:00', 15),
(1503, 'Practice 3', 'Practice', '2024-08-24 11:30:00', '2024-08-24 12:30:00', 15),
(1504, 'Qualifying', 'Qualifying', '2024-08-24 15:00:00', '2024-08-24 16:00:00', 15),
(1505, 'Race', 'Race', '2024-08-25 15:00:00', '2024-08-25 17:00:00', 15),

-- Italian Grand Prix Sessions (Meeting Key: 16)
(1601, 'Practice 1', 'Practice', '2024-08-30 13:30:00', '2024-08-30 14:30:00', 16),
(1602, 'Practice 2', 'Practice', '2024-08-30 17:00:00', '2024-08-30 18:00:00', 16),
(1603, 'Practice 3', 'Practice', '2024-08-31 12:30:00', '2024-08-31 13:30:00', 16),
(1604, 'Qualifying', 'Qualifying', '2024-08-31 16:00:00', '2024-08-31 17:00:00', 16),
(1605, 'Race', 'Race', '2024-09-01 15:00:00', '2024-09-01 17:00:00', 16),

-- Azerbaijan Grand Prix Sessions (Meeting Key: 17)
(1701, 'Practice 1', 'Practice', '2024-09-13 13:30:00', '2024-09-13 14:30:00', 17),
(1702, 'Practice 2', 'Practice', '2024-09-13 17:00:00', '2024-09-13 18:00:00', 17),
(1703, 'Practice 3', 'Practice', '2024-09-14 12:30:00', '2024-09-14 13:30:00', 17),
(1704, 'Qualifying', 'Qualifying', '2024-09-14 16:00:00', '2024-09-14 17:00:00', 17),
(1705, 'Race', 'Race', '2024-09-15 15:00:00', '2024-09-15 17:00:00', 17),

-- Singapore Grand Prix Sessions (Meeting Key: 18)
(1801, 'Practice 1', 'Practice', '2024-09-20 17:30:00', '2024-09-20 18:30:00', 18),
(1802, 'Practice 2', 'Practice', '2024-09-20 21:00:00', '2024-09-20 22:00:00', 18),
(1803, 'Practice 3', 'Practice', '2024-09-21 17:30:00', '2024-09-21 18:30:00', 18),
(1804, 'Qualifying', 'Qualifying', '2024-09-21 21:00:00', '2024-09-21 22:00:00', 18),
(1805, 'Race', 'Race', '2024-09-22 20:00:00', '2024-09-22 22:00:00', 18),

-- United States Grand Prix Sessions (Meeting Key: 19) - *Sprint Weekend*
(1901, 'Practice 1', 'Practice', '2024-10-18 12:30:00', '2024-10-18 13:30:00', 19),
(1902, 'Sprint Qualifying', 'Qualifying', '2024-10-18 16:30:00', '2024-10-18 17:15:00', 19),
(1903, 'Sprint', 'Race', '2024-10-19 13:00:00', '2024-10-19 14:00:00', 19),
(1904, 'Qualifying', 'Qualifying', '2024-10-19 17:00:00', '2024-10-19 18:00:00', 19),
(1905, 'Race', 'Race', '2024-10-20 14:00:00', '2024-10-20 16:00:00', 19),

-- Mexico City Grand Prix Sessions (Meeting Key: 20)
(2001, 'Practice 1', 'Practice', '2024-10-25 12:30:00', '2024-10-25 13:30:00', 20),
(2002, 'Practice 2', 'Practice', '2024-10-25 16:00:00', '2024-10-25 17:00:00', 20),
(2003, 'Practice 3', 'Practice', '2024-10-26 11:30:00', '2024-10-26 12:30:00', 20),
(2004, 'Qualifying', 'Qualifying', '2024-10-26 15:00:00', '2024-10-26 16:00:00', 20),
(2005, 'Race', 'Race', '2024-10-27 14:00:00', '2024-10-27 16:00:00', 20),

-- Sao Paulo Grand Prix Sessions (Meeting Key: 21) - *Sprint Weekend*
(2101, 'Practice 1', 'Practice', '2024-11-01 11:30:00', '2024-11-01 12:30:00', 21),
(2102, 'Sprint Qualifying', 'Qualifying', '2024-11-01 15:30:00', '2024-11-01 16:15:00', 21),
(2103, 'Sprint', 'Race', '2024-11-02 11:00:00', '2024-11-02 12:00:00', 21),
(2104, 'Qualifying', 'Qualifying', '2024-11-02 15:00:00', '2024-11-02 16:00:00', 21),
(2105, 'Race', 'Race', '2024-11-03 14:00:00', '2024-11-03 16:00:00', 21),

-- Las Vegas Grand Prix Sessions (Meeting Key: 22) - *Saturday Night Race*
(2201, 'Practice 1', 'Practice', '2024-11-21 18:30:00', '2024-11-21 19:30:00', 22),
(2202, 'Practice 2', 'Practice', '2024-11-21 22:00:00', '2024-11-21 23:00:00', 22),
(2203, 'Practice 3', 'Practice', '2024-11-22 18:30:00', '2024-11-22 19:30:00', 22),
(2204, 'Qualifying', 'Qualifying', '2024-11-22 22:00:00', '2024-11-22 23:00:00', 22),
(2205, 'Race', 'Race', '2024-11-23 22:00:00', '2024-11-24 00:00:00', 22),

-- Qatar Grand Prix Sessions (Meeting Key: 23) - *Sprint Weekend*
(2301, 'Practice 1', 'Practice', '2024-11-29 16:30:00', '2024-11-29 17:30:00', 23),
(2302, 'Sprint Qualifying', 'Qualifying', '2024-11-29 20:30:00', '2024-11-29 21:15:00', 23),
(2303, 'Sprint', 'Race', '2024-11-30 16:00:00', '2024-11-30 17:00:00', 23),
(2304, 'Qualifying', 'Qualifying', '2024-11-30 20:00:00', '2024-11-30 21:00:00', 23),
(2305, 'Race', 'Race', '2024-12-01 20:00:00', '2024-12-01 22:00:00', 23),

-- Abu Dhabi Grand Prix Sessions (Meeting Key: 24)
(2401, 'Practice 1', 'Practice', '2024-12-06 13:30:00', '2024-12-06 14:30:00', 24),
(2402, 'Practice 2', 'Practice', '2024-12-06 17:00:00', '2024-12-06 18:00:00', 24),
(2403, 'Practice 3', 'Practice', '2024-12-07 14:30:00', '2024-12-07 15:30:00', 24),
(2404, 'Qualifying', 'Qualifying', '2024-12-07 18:00:00', '2024-12-07 19:00:00', 24),
(2405, 'Race', 'Race', '2024-12-08 17:00:00', '2024-12-08 19:00:00', 24);

-- ============================================================
-- 1. Insert Championship Years (Lookup Tables)
-- ============================================================
INSERT INTO Team_championship (year) VALUES (2024);
INSERT INTO Driver_championship (year) VALUES (2024);

-- ============================================================
-- 2. Insert Teams
-- FIX: Added missing semicolon after team 5 row (was causing syntax error)
-- ============================================================
INSERT INTO Team (team_id, team_name, team_logo, team_colour, tc_year) VALUES
(1,  'Red Bull Racing',    'redbull.png',    '#3671C6', 2024),
(2,  'Ferrari',            'ferrari.png',    '#E8002D', 2024),
(3,  'McLaren',            'mclaren.png',    '#FF8000', 2024),
(4,  'Mercedes',           'mercedes.png',   '#27F4D2', 2024),
(5,  'Aston Martin',       'astonmartin.png','#229971', 2024),
(6,  'Alpine',             'alpine.png',     '#FF87BC', 2024),
(7,  'Williams Racing',    'williams.png',   '#005AFF', 2024),
(8,  'Visa Cash App RB',   'rb.png',         '#6692FF', 2024),
(9,  'Kick Sauber',        'sauber.png',     '#52E252', 2024),
(10, 'Haas F1 Team',       'haas.png',       '#B6BABD', 2024);

-- ============================================================
-- 3. Insert All Drivers
-- ============================================================
INSERT INTO Driver (driver_id, name_acronym, first_name, last_name, country_code, driver_number, dc_year, t_team_id) VALUES
(1,  'VER', 'Max',       'Verstappen', 'NLD', 1,  2024, 1),
(2,  'PER', 'Sergio',    'Perez',      'MEX', 11, 2024, 1),
(3,  'LEC', 'Charles',   'Leclerc',    'MCO', 16, 2024, 2),
(4,  'SAI', 'Carlos',    'Sainz',      'ESP', 55, 2024, 2),
(5,  'NOR', 'Lando',     'Norris',     'GBR', 4,  2024, 3),
(6,  'PIA', 'Oscar',     'Piastri',    'AUS', 81, 2024, 3),
(7,  'RUS', 'George',    'Russell',    'GBR', 63, 2024, 4),
(8,  'ALO', 'Fernando',  'Alonso',     'ESP', 14, 2024, 5),
(9,  'HAM', 'Lewis',     'Hamilton',   'GBR', 44, 2024, 4),
(10, 'STR', 'Lance',     'Stroll',     'CAN', 18, 2024, 5),
(11, 'TSU', 'Yuki',      'Tsunoda',    'JPN', 22, 2024, 8),
(12, 'RIC', 'Daniel',    'Ricciardo',  'AUS', 3,  2024, 8),
(13, 'HUL', 'Nico',      'Hülkenberg', 'DEU', 27, 2024, 10),
(14, 'MAG', 'Kevin',     'Magnussen',  'DNK', 20, 2024, 10),
(15, 'ALB', 'Alexander', 'Albon',      'THA', 23, 2024, 7),
(16, 'SAR', 'Logan',     'Sargeant',   'USA', 2,  2024, 7),
(17, 'OCO', 'Esteban',   'Ocon',       'FRA', 31, 2024, 6),
(18, 'GAS', 'Pierre',    'Gasly',      'FRA', 10, 2024, 6),
(19, 'BOT', 'Valtteri',  'Bottas',     'FIN', 77, 2024, 9),
(20, 'ZOU', 'Guanyu',    'Zhou',       'CHN', 24, 2024, 9),
(21, 'BEA', 'Oliver',    'Bearman',    'GBR', 38, 2024, 2),
(22, 'COL', 'Franco',    'Colapinto',  'ARG', 43, 2024, 7),
(23, 'LAW', 'Liam',    'Lawson',  'NZL', 30, 2024, 8),
(24, 'DOO', 'Jack',   'Doohan',    'AUS', 61, 2024, 6); 


-- ============================================================
-- 5. Insert Session Results (Full Grid per Race)
-- FIX: Removed the duplicate partial top-5 inserts that appeared
--      before these full-grid inserts. Keeping one complete insert
--      per session to avoid PRIMARY KEY (session_key, driver_id) violations.
-- ============================================================

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


INSERT INTO Fantasy_league (start_date, end_date, year) 
VALUES ('2024-03-02', '2024-12-08', 2024);

-- Inserting 10 sample users into the User table
INSERT INTO User (user_name, password_hash, favorite_driver_id, favorite_team_id, position_start, position_current, fantasy_points, f_league_id) VALUES
('max_fan_2024', '$2b$10$cPPSA4vpkneP7FM9o8XljOnmcb0c4pDIIxnsBntuFFT3puITNmm72', 1, 1, 1, 1, 0, 1),
('tifosi_charles', '$2b$10$WyQY4YC/XtqVNLHq7V4h/.qlw8FbzSCAxKWKaaz0H1D.gSt4QsYhO', 3, 2, 5, 3, 0, 1),
('papaya_orange', '$2b$10$1wBuUR6pnG8YQVtahm.AcOwWfH1JdSvqVWPwyNhS36LMy85jNvngm', 5, 3, 10, 8, 0, 1),
('sir_lewis_44', '$2b$10$WFlP/MlUgZX.jO02HlaQf.aYVeKk60W0k4ENIK1guE6gaIr9Ty3PO', 9, 4, 2, 4, 0, 1),
('el_plan_fan', '$2b$10$jx5ZFMR/tmH1WAM2hhfHFe/1NhTReP3qfQZ2H88Fb5rqpdPGf6F1m', 8, 5, 15, 12, 0, 1),
('checo_power', '$2b$10$NSx8wgzjisKM9f9Is2DyaezkwerAgU7EQ3ZcnYZFnmBokxb3k.7W.', 2, 1, 20, 18, 0, 1),
('smooth_operator', '$2b$10$e0Q.vYqHsVwvURfwWhUuYu6WL750X3YhfLd7lJvTf/v3vTgdcC5Xi', 4, 2, 4, 5, 0, 1),
('george_63_fan', '$2b$10$ESBwIEXlu65J.f4rT8B6tefQUBRQjHa1pvp1FfQwaVGKTQjrG42Pi', 7, 4, 8, 7, 0, 1),
('oscar_the_shark', '$2b$10$C5n36jBmluSfNfg4Dk988uKXaO1GeDz9gzWAjyP7DmUcjh7zsKgW.', 6, 3, 12, 10, 0, 1),
('bearman_fan', '$2b$10$om43V06pHAt3Sv5nmelY.u.dyB5PU7Ubkz5COMa7R3Tx3nkQ8emya', 21, 2, 50, 45, 0, 1);

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

-- 2. Insert ONLY your local audio files (mapped to correct driver_ids)
INSERT INTO driver_radio_recording_url (driver_id, driver_radio_recording_url) VALUES
(1, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777397151/Max_Brazil_GP24_lokkoe.mp3'),   -- Max Verstappen
(1, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398435/Verstappen_Hungary_-24_walp8l.mp3'),
(3, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398433/Lecrec_clfo31.mp3'),
(4,'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398434/Sainz_vfaxjx.mp3'),
(2, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398433/Perez_h2rik8.mp3'),             -- Sergio Perez
(2,'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398434/Perez2_c4n4ri.mp3'),
(5, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398435/Norris_Crash_24_Austria_urduli.mp3'),      -- Lando Norris
(6,'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398434/Piastri_yu90wp.mp3'),
(7, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398435/George-Let_Me_fucking_Drive_-_24_Austrian_hcnw3o.mp3'), -- George Russell
(7,'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398433/Russel-2_nsvmrn.mp3'),
(8, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398436/Alonso_phxdst.mp3'),            -- Fernando Alonso
(9, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398435/Hamiltone-Silverstone-24_vk0uam.mp3'), -- Lewis Hamilton
(11, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398433/Tsunoda2_alioa3.mp3'),  
 (11, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398433/Tsunoda_24_Austria_lfdsjw.mp3'),       -- Yuki Tsunoda
(13, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398434/Hulkenburg_Sau_Paolo_24_w8f3ql.mp3'),       -- Nico Hülkenberg
(17, 'https://res.cloudinary.com/dzsrp9nt5/video/upload/v1777398434/Ocon_yzozih.mp3');         -- Esteban Ocon


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


-- ============================================================
-- SHOP — merchandise and tickets
-- ============================================================

-- ----- MERCHANDISE (8 items) -----
INSERT INTO Shop_item (item_name, item_type, description, price, image_url, stock) VALUES
('F1 Official Cap',         'merch', 'Embroidered F1 logo cap, one size fits all.',                    29.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/cap_kziggv.jpg',                  150),
('Red Bull Racing T-Shirt', 'merch', 'Official team t-shirt, 100%% cotton.',                            49.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/rbr-tshirt_q1zy8v.jpg',          100),
('Ferrari Hoodie',          'merch', 'Scuderia Ferrari pullover hoodie in classic red.',                89.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ferrari-hoodie_scleah.jpg',       75),
('Mercedes AMG Jacket',     'merch', 'Lightweight team jacket with embroidered logo.',                 119.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/mercedes-jacket_vddt8q.jpg',      50),
('McLaren Mug',             'merch', 'Ceramic mug featuring the McLaren papaya colour.',                14.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/mclaren-mug_nwbdgm.jpg',         200),
('F1 Keychain',             'merch', 'Metal keychain with race car silhouette.',                         9.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/keychain_amooeg.jpg',            300),
('Lewis Hamilton Poster',   'merch', '24x36 inch glossy poster of the 7-time champion.',                19.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/hamilton-poster_qv01uj.jpg',     120),
('F1 Scale Model Car 1:43', 'merch', 'Detailed die-cast model of a current season F1 car.',             59.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/model-car_cbgogo.jpg',            60);

-- ----- TICKETS (5 items) — references Meeting table -----
-- meeting_key 1 = Bahrain, 8 = Monaco, 10 = Spain
INSERT INTO Shop_item (item_name, item_type, description, price, image_url, stock, meeting_key) VALUES
('Monaco GP — General Admission',  'ticket', 'Standing access for the entire Monaco GP weekend.',          150.00,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ticket-monaco-ga_wuczua.jpg',         500, 8),
('Monaco GP — Grandstand',         'ticket', 'Reserved seat overlooking the harbour chicane.',              350.00,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ticket-monaco-grandstand_is9lc3.jpg', 200, 8),
('Monaco GP — VIP Paddock Pass',   'ticket', 'Premium hospitality with paddock access and food.',          1200.00,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ticket-monaco-vip_lnpvty.jpg',         50, 8),
('Bahrain GP — Weekend GA',        'ticket', 'Three-day general admission at the season opener.',           200.00,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ticket-silverstone_k6b5yk.jpg',       400, 1),
('Spanish GP — Grandstand',        'ticket', 'Grandstand seat for the Spanish Grand Prix at Catalunya.',    275.00,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ticket-monza_huikjm.jpg',             250, 10);


-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: f1_db
-- ------------------------------------------------------
-- Server version	8.0.45
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `news`
--
DROP TABLE IF EXISTS `news`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `news` (
    `id` int NOT NULL AUTO_INCREMENT,
    `title` varchar(255) CHARACTER
    SET
      utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
      `date` date NOT NULL,
      `content` text CHARACTER
    SET
      utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
      `image_url` varchar(512) CHARACTER
    SET
      utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
      PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 15 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--
LOCK TABLES `news` WRITE;

/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO
  `news`
VALUES
  (
    4,
    'Hamilton admits he thought Ferrari ‘would be stronger’ in Miami Sprint Qualifying as Leclerc details issues',
    '2026-05-02',
    'Lewis Hamilton has admitted that he thought Ferrari “would be stronger” in Sprint Qualifying at the Miami Grand Prix, with the Briton ending the session in P7 while team mate Charles Leclerc had to settle for P5 despite earlier setting the pace.\n\nThings had initially appeared promising for the Scuderia – one of several teams to bring significant upgrade packages this weekend – as the action got underway in Miami, Leclerc having topped the timesheets in Friday’s sole practice session.\n\nThe Monegasque again went quickest during the SQ2 segment of Sprint Qualifying, but both Ferraris were outpaced in the top 10 shootout by rivals including McLaren, with Lando Norris claiming pole position for Saturday’s Sprint.\n\nReflecting on whether he had felt that the SF-26 was performing as expected during the session, Hamilton said afterwards: “We didn’t really know what to expect. I had hoped that we would be better, but the car didn’t feel particularly great.”\n\nThe seven-time World Champion went on to say that he had “no idea” if the team’s new package would perform better at other tracks, adding: “I thought we would be stronger than we were today.\n\n“We’ve got to do some work overnight to try and figure out why we’re not that quick. I was hopeful coming in, positive that we could be much higher, but not meant to be.”\n\nLeclerc also conceded that Ferrari have progress to make when it comes to Qualifying form, with the eight-time race winner explaining the areas where the team have been struggling.\n\n“The upgrades are fine, it’s just that everybody brought upgrades,” said Leclerc. “We kind of expected that situation where Mercedes is probably still the car to beat. McLaren did a very big step forward, but I felt like they didn’t optimise their first races of the season, so they were always there but they didn’t put everything together.\n\n“On our side, today particularly we’ve struggled with tyres – medium were working very well, on the soft it wasn’t a nice feeling, so on that we’ve got to look at it. We know that in the race pace we are stronger, but in terms of Qualifying there is still some work to be done.”\n\nQuizzed on how he sees the rest of the weekend unfolding based on what the squad learned during Friday’s running, Leclerc sounded an optimistic note about the possibilities in race form.\n\n“I think in Qualifying tomorrow we can try and fine-tune a little bit and find a bit of performance, but I hope that in the race we can come back in the front,” he explained. “We’ve got the pace to do that, let’s just see if we are able to overtake.”',
    'https://media.formula1.com/image/upload/t_16by9Centre/c_lfill,w_3392/q_auto/v1740000001/fom-website/2026/Miami/16x9%20double%20split.webp'
  ),
  (
    8,
    'Albon drops to P19 for Miami Sprint after track limit violation',
    '2026-04-26',
    'Alex Albon has been demoted down to P19 for the Miami Sprint after the stewards deemed the Williams driver exceeded track limits during Sprint Qualifying.\n\nAlbon progressed through to SQ2 and had initially taken 14th on Friday but, following the session, it was deemed he exceeded track limits at Turn 6 with his final effort in the previous segment.\n\nThe decision to strip Albon of his best lap in SQ1 and all subsequent laps in SQ2 means he will start Saturday\'s Sprint at the Miami International Autodrome from P19.\n\nAlbon had squeezed into SQ2 with his final effort, a 1m 30.988s, leaving him P16 and demoting Racing Bulls\' Liam Lawson by less than one-tenth.\n\nThe Kiwi driver noticeably stayed in his car until just after the start of SQ2, before it was subsequently confirmed after Sprint Qualifying that Albon\'s effort had exceeded track limits.\n\nThe stewards\' document read: \"During SQ1, Car 23 clearly exceeded track limits in Turn 6. However this was not reported to the Stewards until SQ2 had commenced.\n\n\"Car 23’s time recorded on the lap that track limits were exceeded was sufficient to place it in SQ2. Hence at the time the Stewards were informed that Car 23 had left the track and that its lap should have been potentially deleted, it was already on track in SQ2.\n\n\"As this was an unusual situation, the Stewards have decided to settle the matter by exercising their authority under Article 11.7.1.a of the International Sporting Code by deleting the lap time of the lap in question in SQ1.\n\n\"As Car 23 should not have proceeded into SQ2, all lap times from SQ2 will consequently be deleted.\"',
    'https://media.formula1.com/image/upload/c_lfill,w_3392/q_auto/v1740000001/fom-website/2026/Miami/16x9%20single%20image%20-%202026-05-02T004621.095.webp'
  ),
  (
    9,
    '\'Looking strong compared to the midfield cars\' – Alpine duo optimistic after reaching SQ3 for Miami Sprint',
    '2026-04-28',
    'Franco Colapinto believes that Alpine are \"looking strong compared to the midfield cars\" this weekend ahead of the Miami Grand Prix, with the Argentinian and team mate Pierre Gasly both set to start in the top 10 for the Miami Sprint.\n\nColapinto will start P8 for Saturday\'s Sprint at the Miami International Autodrome, equalling his best-ever Qualifying performance in any format and marking the first time both Alpine cars have reached the top 10 ahead of a Grand Prix or Sprint this season.\n\nColapinto was left thrilled having overcome a problem with his A526 in Friday\'s sole practice session as Alpine brought new upgrades this weekend.\n\n\"I\'m happy because we turned around something that was quite tough and it took us a while to understand and I think we are finally getting in the the rhythm and understanding some of the pace that we lacked,\" he said after Sprint Qualifying.\n\n\"Doing good laps all day on a track that I know, on a Sprint weekend which is more difficult. Just all very positive today.\n\n\"I think it\'s been a good break for us to kind of reset and go again, understand where we need to work and we worked I think really well in the right direction. I\'m pleased with the performance today but of course it\'s just the start of the weekend.\n\n\"I think the pace is looking strong, compared to the midfield cars we are looking good.\"\n\nAlpine have only claimed one double-points finish this season, in the Chinese Grand Prix, but the squad sits joint fifth in the Teams\' standings, largely courtesy of Gasly scoring points in all three Grands Prix.\n\nThe Frenchman will start the Miami Sprint from P10 but was left unhappy with the performance, believing there is far more potential to come if the team can overcome excessive wheelspin.\n\n\"Not really good because it has been very difficult since this morning. We\'ve seen something is not quite working on my side and I\'m having a lot of wheelspin,\" he said.\n\n\"Unfortunately we didn\'t really have enough time to get to the bottom of it but it hasn\'t felt good so we\'ll have to work hard to improve it for tomorrow because I think I\'m going to struggle in the race as it stands.\n\n\"Still, [we] managed to get the two cars in the top 10 which is good but we just have a lot more potential to unlock.\"',
    'https://media.formula1.com/image/upload/t_16by9Centre/c_lfill,w_3392/q_auto/v1740000001/fom-website/2026/Miscellaneous/GettyImages-2268535429.webp'
  ),
  (
    10,
    'Russell explains struggles in Miami Sprint Qualifying as he admits being ‘surprised’ by progress of rivals',
    '2026-04-30',
    'George Russell has explained the issues that led to him “struggling” during Sprint Qualifying at the Miami Grand Prix, with the Briton – who ended the session in sixth – admitting to being “surprised” by how Mercedes’ rivals have progressed.\n\nAfter some issues for the Silver Arrows in Friday’s sole practice session, the championship leaders were somewhat on the back foot when SQ1 got underway a few hours later.\n\nIt would prove to be McLaren and Ferrari – both teams that have brought upgrade packages this weekend – who set the pace through Sprint Qualifying, with Lando Norris ultimately coming out on top to seal pole position for Saturday’s Sprint.\n\nWhile Kimi Antonelli slotted into P2 during the closing moments of SQ3, his Mercedes team mate Russell had to settle for P6 and later reflected on the challenges of the day as he spoke to the media afterwards.\n\n“It’s pretty surprising how big a jump McLaren and Ferrari have made, so that’s pretty damn impressive,” the 28-year-old said. “We knew they’d probably close the gap, but all day they’ve been quicker than us.\n\n“On my side I’ve been struggling today – Miami’s not a track that I love, to be honest, especially in these hotter conditions. But it’s only Sprint Qualifying, so let’s see what tomorrow brings.”\n\nPushed on the key areas that were causing those struggles, Russell explained: “It was just overheating the tyres a lot in that twisty section in the middle – I was struggling to get the right balance with the car so, yeah, not much more to say than that really.\n\n“As I said, I’ve just been quite surprised by the progress of the others, but another day tomorrow.”\n\nWhen asked if he felt that it would take a lot to bring the fight to those ahead of him on Saturday, the British driver conceded: “I don’t know. I’m not in a great starting position.\n\n“Sprint races generally don’t offer that much, but obviously China was a bit more interesting this year, which gives an opportunity to have a bit of a race. So I want to get off the line – hopefully don’t lose any more positions – and see what we can do.”',
    'https://media.formula1.com/image/upload/t_16by9Centre/c_lfill,w_3392/q_auto/v1740000001/trackside-images/2026/F1_Grand_Prix_of_Miami___Previews/2273922620.webp'
  ),
  (
    12,
    'McLaren drivers reflect on ‘kick back down to reality’ in Miami Qualifying hours after Sprint success',
    '2026-05-01',
    'Lando Norris and Oscar Piastri have given their take on the change in fortunes that saw McLaren face a trickier Qualifying in Miami hours after winning the Sprint, with Piastri calling it a “kick back down to reality”.\n\nThe weekend got off to a strong start for the Woking-based squad – one of many outfits to bring an upgrade package to the event – as Norris sealed pole position in Friday’s Sprint Qualifying, which he then converted into a win in the Sprint earlier on Saturday.\n\nHowever, McLaren experienced a tougher outing in Qualifying later in the day amid a competitive session that saw Mercedes, Ferrari and Red Bull all seemingly in contention. Kimi Antonelli ultimately claimed pole, while Norris placed in fourth and Piastri wound up in seventh place.\n\nAsked after the session about where he felt the car had not been as strong relative to earlier in the weekend, Norris explained: “I’ve not looked at comparing to the others just yet, but a bit everywhere, honestly. I feel like I was doing a better job, but just we were slower.\n\n“I think today was probably a little bit more where we should be. I know it was close, so you can probably say we could have been third. I think the weird thing is how much pace we lost from yesterday to today really, so we need to understand that first of all.\n\n“Some of that is kind of conditions – it’s still a lot hotter than it was at this point yesterday, and the wind was a little bit different. But all in all, it was just a lot trickier – a much more messy session from our side as a team, myself included.\n\n“Some things to understand, but I think it wasn’t like we did a bad job, it was just yesterday I think everyone else did do a bad job! We capitalised, and today we are more where we deserve to be.”\n\nWhile Norris acknowledged that “some little tweaks” had been made to the MCL40 between the Sprint and Qualifying, he joked that this was “nothing that should make us slower”.\n\nOn the other side of the garage, there was a tense end to Q1 for Piastri as the Australian only just made it through to Q2. After progressing from there to the top-10 shootout, Piastri did not have the pace to be in the final battle for pole but suggested that he had expected the margins to be fine.\n\n“We knew it was going to be tight,” the nine-time race winner said. “I think Antonelli’s lap is more what we expected from Mercedes, to be honest. Obviously Lando was pretty close to P2 or P3.',
    'https://media.formula1.com/image/upload/t_16by9Centre/c_lfill,w_3392/q_auto/v1740000001/fom-website/2026/Miami/16x9%20double%20split%20(1).webp'
  ),
  (
    13,
    'OFFICIAL GRID: Who starts where in Miami after Hadjar\'s Qualifying DSQ',
    '2026-04-29',
    'For the third Grand Prix in a row it’s Mercedes’ Kimi Antonelli on pole after the Italian teenager proved uncatchable around the Miami International Autodrome – despite the best efforts of a resurgent Max Verstappen, who put his much-improved Red Bull on the front row.\n\nCharles Leclerc is the lead Ferrari in third, after Lando Norris and McLaren failed to repeat their spectacular Sprint form, the reigning World Champion qualifying fourth with team mate Oscar Piastri seventh. Between the papaya cars lie Mercedes’ George Russell and Ferrari’s Lewis Hamilton.\n\nA superb session from Franco Colapinto means he is the lead Alpine in eighth, with team mate Pierre Gasly ninth – the spot originally due to be filled by Isack Hadjar before the Red Bull driver was disqualified from Qualifying for a technical infringement.\n\nHadjar will start from the pit lane after Red Bull opted to change power unit elements on the Frenchman\'s car, so Audi’s Nico Hulkenberg completes the top 10 on the grid.',
    'https://media.formula1.com/image/upload/t_16by9North/c_lfill,w_3392/q_auto/v1740000001/trackside-images/2026/F1_Grand_Prix_Of_Australia/2265348788.webp'
  ),
  (
    14,
    'What the teams said – Sprint day and Qualifying in Miami',
    '2026-04-26',
    'Antonelli started the Sprint second, but had another bad getaway, which the team indicated was due to a glitch in the system. That sent him backwards into the clutches of his team mate, but while Russell initially got past, the teenager was able to fight back. Those two then engaged in lap after lap of cat and mouse action for P4, with Russell finally making a move midway through the Sprint only for Antonelli to retake the place later on. The Italian finished fourth to Russell’s fifth, but was handed a five-second time penalty for exceeding track limits too many times, which dropped him to sixth.\n\nBut the youngster more than made up for that slightly messy session by nailing his Qualifying, grabbing pole with his first lap in Q3. He locked up into Turn 1 on his second run, but his first was more than good enough for his third straight pole. Russell still cannot match him here, having to settle for P5.\n\nGeorge Russell, Sprint: 4th, Qualifying: 5th, 1:28.197\n\n\"P5 is a disappointing result. Kimi did a great job to get pole but, on my side, I think we could have been P3 if we’d have maximised everything. Sadly, given how close the front of the field is, a few small mistakes added up to dropping us a few positions further down the grid. It’s not been my best weekend of the season so far, and I’ve struggled to get along with this track, but I’m hopeful tomorrow will be better.\n\n\"The expected rain tomorrow will likely play a role in how the Grand Prix goes. We’ve not raced these cars in the wet so that’s an unknown. I’m confident we’ve got good underlying pace though and hopefully that helps us achieve a better result on Sunday.\"',
    'https://media.formula1.com/image/upload/t_16by9South/c_lfill,w_3392/q_auto/v1740000001/trackside-images/2026/F1_Grand_Prix_of_Miami___Sprint__Qualifying/2274170117.webp'
  );

/*!40000 ALTER TABLE `news` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-03 23:05:52

-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: f1_db
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'rajesh970bd@gmail.com'),(2,'rajeshsaharoy55@gmail.com');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-03  1:21:55

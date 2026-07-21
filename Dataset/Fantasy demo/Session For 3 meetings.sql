INSERT INTO Session (session_key, session_name, session_type, date_start, date_end, meeting_key)
VALUES
-- Bahrain 2025 (meeting 25)
(2501, 'Practice 1', 'Practice',   DATE_ADD(NOW(), INTERVAL 7  DAY), DATE_ADD(NOW(), INTERVAL 7  DAY), 25),
(2502, 'Practice 2', 'Practice',   DATE_ADD(NOW(), INTERVAL 7  DAY), DATE_ADD(NOW(), INTERVAL 7  DAY), 25),
(2503, 'Practice 3', 'Practice',   DATE_ADD(NOW(), INTERVAL 8  DAY), DATE_ADD(NOW(), INTERVAL 8  DAY), 25),
(2504, 'Qualifying',  'Qualifying', DATE_ADD(NOW(), INTERVAL 8  DAY), DATE_ADD(NOW(), INTERVAL 8  DAY), 25),
(2505, 'Race',        'Race',       DATE_ADD(NOW(), INTERVAL 9  DAY), DATE_ADD(NOW(), INTERVAL 9  DAY), 25),

-- Saudi Arabia 2025 (meeting 26)
(2601, 'Practice 1', 'Practice',   DATE_ADD(NOW(), INTERVAL 14 DAY), DATE_ADD(NOW(), INTERVAL 14 DAY), 26),
(2602, 'Practice 2', 'Practice',   DATE_ADD(NOW(), INTERVAL 14 DAY), DATE_ADD(NOW(), INTERVAL 14 DAY), 26),
(2603, 'Practice 3', 'Practice',   DATE_ADD(NOW(), INTERVAL 15 DAY), DATE_ADD(NOW(), INTERVAL 15 DAY), 26),
(2604, 'Qualifying',  'Qualifying', DATE_ADD(NOW(), INTERVAL 15 DAY), DATE_ADD(NOW(), INTERVAL 15 DAY), 26),
(2605, 'Race',        'Race',       DATE_ADD(NOW(), INTERVAL 16 DAY), DATE_ADD(NOW(), INTERVAL 16 DAY), 26),

-- Australia 2025 (meeting 27)
(2701, 'Practice 1', 'Practice',   DATE_ADD(NOW(), INTERVAL 21 DAY), DATE_ADD(NOW(), INTERVAL 21 DAY), 27),
(2702, 'Practice 2', 'Practice',   DATE_ADD(NOW(), INTERVAL 21 DAY), DATE_ADD(NOW(), INTERVAL 21 DAY), 27),
(2703, 'Practice 3', 'Practice',   DATE_ADD(NOW(), INTERVAL 22 DAY), DATE_ADD(NOW(), INTERVAL 22 DAY), 27),
(2704, 'Qualifying',  'Qualifying', DATE_ADD(NOW(), INTERVAL 22 DAY), DATE_ADD(NOW(), INTERVAL 22 DAY), 27),
(2705, 'Race',        'Race',       DATE_ADD(NOW(), INTERVAL 23 DAY), DATE_ADD(NOW(), INTERVAL 23 DAY), 27);
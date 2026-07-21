-- 3 upcoming 2025 races
INSERT INTO Meeting (
  meeting_key, circuit_id, circuit_type, circuit_short_name,
  country_key, country_name, country_code, location,
  meeting_name, year, date_start, date_end
) VALUES
(25, 1,  'Permanent', 'Sakhir',    1,  'Bahrain',      'BHR', 'Sakhir',    'Bahrain Grand Prix',        2026, DATE_ADD(NOW(), INTERVAL 7  DAY), DATE_ADD(NOW(), INTERVAL 9  DAY)),
(26, 2,  'Street',    'Jeddah',    2,  'Saudi Arabia', 'SAU', 'Jeddah',    'Saudi Arabian Grand Prix',  2026, DATE_ADD(NOW(), INTERVAL 14 DAY), DATE_ADD(NOW(), INTERVAL 16 DAY)),
(27, 3,  'Street',    'Melbourne', 3,  'Australia',    'AUS', 'Melbourne', 'Australian Grand Prix',     2026, DATE_ADD(NOW(), INTERVAL 21 DAY), DATE_ADD(NOW(), INTERVAL 23 DAY));
-- Simulate 5 users submitting picks for Bahrain
INSERT INTO Fantasy_pick (user_name, meeting_key, driver1_id, driver2_id, team_id, captain_driver_id)
VALUES
('max_fan_2024',   25, 1, 5,  1, 1),  -- Verstappen + Norris, team Red Bull,  captain Verstappen
('tifosi_charles', 25, 3, 4,  2, 3),  -- Leclerc + Sainz,     team Ferrari,   captain Leclerc
('papaya_orange',  25, 5, 6,  3, 5),  -- Norris + Piastri,    team McLaren,   captain Norris
('sir_lewis_44',   25, 9, 7,  4, 9),  -- Hamilton + Russell,  team Mercedes,  captain Hamilton
('george_63_fan',  25, 7, 1,  4, 7);  -- Russell + Verstappen,team Mercedes,  captain Russell
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
-- ============================================================
-- F1 Database Schema Creation
-- ============================================================

CREATE DATABASE IF NOT EXISTS f1_db
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE f1_db;

-- ============================================================
-- 1. FANTASY_LEAGUE
-- ============================================================
CREATE TABLE Fantasy_league (
    league_id       INT             NOT NULL AUTO_INCREMENT,
    start_date      DATE            NOT NULL,
    end_date        DATE            NOT NULL,
    year            YEAR            NOT NULL,
    PRIMARY KEY (league_id)
);

-- ============================================================
-- 2. TEAM_CHAMPIONSHIP  (lookup table — just the year)
-- ============================================================
CREATE TABLE Team_championship (
    year            YEAR            NOT NULL,
    PRIMARY KEY (year)
);

-- ============================================================
-- 3. DRIVER_CHAMPIONSHIP  (lookup table — just the year)
-- ============================================================
CREATE TABLE Driver_championship (
    year            YEAR            NOT NULL,
    PRIMARY KEY (year)
);

-- ============================================================
-- 4. TEAM
-- ============================================================
CREATE TABLE Team (
    team_id             INT             NOT NULL AUTO_INCREMENT,
    team_name           VARCHAR(100)    NOT NULL,
    team_logo           VARCHAR(500)    NULL,        -- URL / path
    team_colour         VARCHAR(10)     NULL,        -- hex code e.g. #FF1801
    tc_year             YEAR            NOT NULL,    -- FK → Team_championship
    points_current      FLOAT           DEFAULT 0,
    points_start        FLOAT           DEFAULT 0,
    position_current    INT             NULL,
    position_start      INT             NULL,
    f_league_id         INT             NULL,        -- FK → Fantasy_league
    PRIMARY KEY (team_id),
    CONSTRAINT fk_team_tc_year
        FOREIGN KEY (tc_year)
        REFERENCES Team_championship(year)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_team_league
        FOREIGN KEY (f_league_id)
        REFERENCES Fantasy_league(league_id)
        ON UPDATE CASCADE ON DELETE SET NULL
);

-- ============================================================
-- 5. DRIVER
-- ============================================================
CREATE TABLE Driver (
    driver_id           INT             NOT NULL AUTO_INCREMENT,
    name_acronym        VARCHAR(10)     NOT NULL,
    first_name          VARCHAR(100)    NOT NULL,
    last_name           VARCHAR(100)    NOT NULL,
    full_name           VARCHAR(200)    GENERATED ALWAYS AS
                            (CONCAT(first_name, ' ', last_name)) STORED,
    country_code        CHAR(3)         NULL,
    position            INT             NULL,
    driver_number       INT             NULL,
    dc_year             YEAR            NOT NULL,    -- FK → Driver_championship
    points_current      FLOAT           DEFAULT 0,
    points_start        FLOAT           DEFAULT 0,
    position_current    INT             NULL,
    position_start      INT             NULL,
    f_league_id         INT             NULL,        -- FK → Fantasy_league
    t_team_id           INT             NULL,        -- FK → Team
    PRIMARY KEY (driver_id),
    CONSTRAINT fk_driver_dc_year
        FOREIGN KEY (dc_year)
        REFERENCES Driver_championship(year)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_driver_league
        FOREIGN KEY (f_league_id)
        REFERENCES Fantasy_league(league_id)
        ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_driver_team
        FOREIGN KEY (t_team_id)
        REFERENCES Team(team_id)
        ON UPDATE CASCADE ON DELETE SET NULL
);

-- ============================================================
-- 6. DRIVER_RADIO_RECORDING_URL
-- ============================================================
CREATE TABLE Driver_radio_recording_url (
    driver_id                   INT             NOT NULL,
    driver_radio_recording_url  VARCHAR(255)   NOT NULL,
    PRIMARY KEY (driver_id, driver_radio_recording_url),
    CONSTRAINT fk_radio_driver
        FOREIGN KEY (driver_id)
        REFERENCES Driver(driver_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- ============================================================
-- 7. USER
-- ============================================================
CREATE TABLE User (
    user_name           VARCHAR(100)    NOT NULL,
    password_hash       VARCHAR(255)    NOT NULL,
    favorite_driver_id  INT             NULL,        -- FK → Driver
    favorite_team_id    INT             NULL,        -- FK → Team
    position_start      INT             NULL,
    position_current    INT             NULL,
    fantasy_points      FLOAT           DEFAULT 0,
    f_league_id         INT             NULL,        -- FK → Fantasy_league
    PRIMARY KEY (user_name),
    CONSTRAINT fk_user_driver
        FOREIGN KEY (favorite_driver_id)
        REFERENCES Driver(driver_id)
        ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_user_team
        FOREIGN KEY (favorite_team_id)
        REFERENCES Team(team_id)
        ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_user_league
        FOREIGN KEY (f_league_id)
        REFERENCES Fantasy_league(league_id)
        ON UPDATE CASCADE ON DELETE SET NULL
);

-- ============================================================
-- 8. MEETING
-- ============================================================
CREATE TABLE Meeting (
    meeting_key         INT             NOT NULL,
    circuit_id          INT             NULL,
    circuit_type        VARCHAR(50)     NULL,
    circuit_short_name  VARCHAR(100)    NULL,
    country_key         INT             NULL,
    country_name        VARCHAR(100)    NULL,
    country_code        CHAR(3)         NULL,
    location            VARCHAR(200)    NULL,
    meeting_name        VARCHAR(200)    NULL,
    year                YEAR            NOT NULL,
    date_start          DATETIME        NULL,
    date_end            DATETIME        NULL,
    ticket              VARCHAR(500)    NULL,        -- ticket URL
    PRIMARY KEY (meeting_key)
);

-- ============================================================
-- 9. NEWS  (weak entity of Meeting)
-- ============================================================
CREATE TABLE News (
    meeting_key     INT             NOT NULL,
    news_url        VARCHAR(255)   NOT NULL,
    PRIMARY KEY (meeting_key, news_url),
    CONSTRAINT fk_news_meeting
        FOREIGN KEY (meeting_key)
        REFERENCES Meeting(meeting_key)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- ============================================================
-- 10. SESSION
-- ============================================================
CREATE TABLE Session (
    session_key     INT             NOT NULL,
    session_name    VARCHAR(100)    NOT NULL,
    session_type    VARCHAR(50)     NOT NULL,   -- e.g. 'Race','Qualifying','Practice'
    date_start      DATETIME        NULL,
    date_end        DATETIME        NULL,
    meeting_key     INT             NOT NULL,   -- FK → Meeting
    PRIMARY KEY (session_key),
    CONSTRAINT fk_session_meeting
        FOREIGN KEY (meeting_key)
        REFERENCES Meeting(meeting_key)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

-- ============================================================
-- 11. PARTICIPATES_IN  (Driver ↔ Session  M:N)
-- ============================================================
CREATE TABLE Participates_in (
    session_key     INT     NOT NULL,
    driver_id       INT     NOT NULL,
    PRIMARY KEY (session_key, driver_id),
    CONSTRAINT fk_part_session
        FOREIGN KEY (session_key)
        REFERENCES Session(session_key)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_part_driver
        FOREIGN KEY (driver_id)
        REFERENCES Driver(driver_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- ============================================================
-- 12. LAP
-- ============================================================
CREATE TABLE Lap (
    session_key         INT             NOT NULL,
    lap_number          INT             NOT NULL,
    date_start          DATETIME        NULL,
    duration_sector_1   FLOAT           NULL,   -- seconds
    duration_sector_2   FLOAT           NULL,
    duration_sector_3   FLOAT           NULL,
    lap_duration        FLOAT           GENERATED ALWAYS AS
                            (COALESCE(duration_sector_1,0)
                           + COALESCE(duration_sector_2,0)
                           + COALESCE(duration_sector_3,0)) STORED,
    PRIMARY KEY (session_key, lap_number),
    CONSTRAINT fk_lap_session
        FOREIGN KEY (session_key)
        REFERENCES Session(session_key)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- ============================================================
-- 13. STINT
-- ============================================================
CREATE TABLE Stint (
    stint_id        INT     NOT NULL AUTO_INCREMENT,
    stint_number    INT     NOT NULL,
    lap_start       INT     NOT NULL,
    lap_end         INT     NOT NULL,
    compound        VARCHAR(20) NULL,   -- e.g. 'SOFT','MEDIUM','HARD'
    session_key     INT     NOT NULL,   -- FK → Session
    PRIMARY KEY (stint_id),
    CONSTRAINT fk_stint_session
        FOREIGN KEY (session_key)
        REFERENCES Session(session_key)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- ============================================================
-- 14. WEATHER
-- ============================================================
CREATE TABLE Weather (
    session_key         INT         NOT NULL,
    date                DATETIME    NOT NULL,
    humidity            FLOAT       NULL,   -- %
    pressure            FLOAT       NULL,   -- mbar
    track_temperature   FLOAT       NULL,   -- °C
    air_temperature     FLOAT       NULL,   -- °C
    wind_speed          FLOAT       NULL,   -- m/s
    wind_direction      INT         NULL,   -- degrees (0-360)
    rainfall            TINYINT(1)  DEFAULT 0,
    PRIMARY KEY (session_key, date),
    CONSTRAINT fk_weather_session
        FOREIGN KEY (session_key)
        REFERENCES Session(session_key)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- ============================================================
-- 15. SESSION_RESULT
-- ============================================================
CREATE TABLE Session_result (
    session_key     INT             NOT NULL,
    driver_id       INT             NOT NULL,
    position        INT             NULL,
    points          FLOAT           DEFAULT 0,
    number_of_laps  INT             NULL,
    duration        FLOAT           NULL,       -- total race time in seconds
    gap_to_the_leader FLOAT         NULL,       -- seconds
    dnf             TINYINT(1)      DEFAULT 0,  -- Did Not Finish
    dns             TINYINT(1)      DEFAULT 0,  -- Did Not Start
    dsq             TINYINT(1)      DEFAULT 0,  -- Disqualified
    PRIMARY KEY (session_key, driver_id),
    CONSTRAINT fk_sresult_session
        FOREIGN KEY (session_key)
        REFERENCES Session(session_key)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_sresult_driver
        FOREIGN KEY (driver_id)
        REFERENCES Driver(driver_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- ============================================================
-- 16. OVERTAKE
-- ============================================================
CREATE TABLE Overtake (
    overtaking_driver_id    INT     NOT NULL,
    overtaken_driver_id     INT     NOT NULL,
    session_key             INT     NOT NULL,
    lap                     INT     NOT NULL,
    position                INT     NULL,
    date                    DATETIME NULL,
    PRIMARY KEY (overtaking_driver_id, overtaken_driver_id, session_key, lap),
    CONSTRAINT fk_overtake_session
        FOREIGN KEY (session_key)
        REFERENCES Session(session_key)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_overtaking_driver
        FOREIGN KEY (overtaking_driver_id)
        REFERENCES Driver(driver_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_overtaken_driver
        FOREIGN KEY (overtaken_driver_id)
        REFERENCES Driver(driver_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Shop_item (
    item_id         INT             NOT NULL AUTO_INCREMENT,
    item_name       VARCHAR(200)    NOT NULL,
    item_type       ENUM('merch','ticket') NOT NULL,
    description     VARCHAR(500)    NULL,
    price           DECIMAL(10,2)   NOT NULL,
    image_url       VARCHAR(500)    NULL,
    stock           INT             DEFAULT 100,
    meeting_key     INT             NULL,    -- only set for tickets
    PRIMARY KEY (item_id),
    CONSTRAINT fk_shopitem_meeting
        FOREIGN KEY (meeting_key)
        REFERENCES Meeting(meeting_key)
        ON UPDATE CASCADE ON DELETE SET NULL
);

-- ============================================================
-- 19. SHOP_ORDER
-- One row per checkout. Stores who placed the order, when,
-- and the total amount they paid (mock — no real money moves).
-- ============================================================
CREATE TABLE Shop_order (
    order_id        INT             NOT NULL AUTO_INCREMENT,
    user_name       VARCHAR(100)    NOT NULL,
    total_amount    DECIMAL(10,2)   NOT NULL,
    status          VARCHAR(30)     DEFAULT 'confirmed',
    created_at      DATETIME        DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (order_id),
    CONSTRAINT fk_order_user
        FOREIGN KEY (user_name)
        REFERENCES User(user_name)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- ============================================================
-- 20. SHOP_ORDER_ITEM
-- Line items for an order. One order can have many items.
-- We store `price_at_purchase` so old orders keep their original
-- price even if we change the item's price later.
-- ============================================================
CREATE TABLE Shop_order_item (
    order_id            INT             NOT NULL,
    item_id             INT             NOT NULL,
    quantity            INT             NOT NULL DEFAULT 1,
    price_at_purchase   DECIMAL(10,2)   NOT NULL,
    PRIMARY KEY (order_id, item_id),
    CONSTRAINT fk_oi_order
        FOREIGN KEY (order_id)
        REFERENCES Shop_order(order_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_oi_item
        FOREIGN KEY (item_id)
        REFERENCES Shop_item(item_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Fantasy_pick (
    user_name           VARCHAR(100)    NOT NULL,
    meeting_key         INT             NOT NULL,
    driver1_id          INT             NOT NULL,
    driver2_id          INT             NOT NULL,
    team_id             INT             NOT NULL,
    captain_driver_id   INT             NOT NULL,
    points_earned       FLOAT           DEFAULT 0,
    locked              TINYINT(1)      DEFAULT 0,
    created_at          DATETIME        DEFAULT CURRENT_TIMESTAMP,
    updated_at          DATETIME        DEFAULT CURRENT_TIMESTAMP
                                        ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (user_name, meeting_key),
    CONSTRAINT fk_fp_user
        FOREIGN KEY (user_name)
        REFERENCES User(user_name)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_fp_meeting
        FOREIGN KEY (meeting_key)
        REFERENCES Meeting(meeting_key)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_fp_driver1
        FOREIGN KEY (driver1_id)
        REFERENCES Driver(driver_id),
    CONSTRAINT fk_fp_driver2
        FOREIGN KEY (driver2_id)
        REFERENCES Driver(driver_id),
    CONSTRAINT fk_fp_team
        FOREIGN KEY (team_id)
        REFERENCES Team(team_id),
    CONSTRAINT fk_fp_captain
        FOREIGN KEY (captain_driver_id)
        REFERENCES Driver(driver_id),
    CONSTRAINT chk_two_diff_drivers
        CHECK (driver1_id <> driver2_id),
    CONSTRAINT chk_captain_is_picked
        CHECK (captain_driver_id IN (driver1_id, driver2_id))
);
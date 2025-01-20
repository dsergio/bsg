
CREATE TABLE ships_tech (
  ship_id             INT            NOT NULL,
  tech_id             INT            NOT NULL
);


CREATE TABLE bsg_references (
  id                         INT            PRIMARY KEY   AUTO_INCREMENT,
  reference                  TEXT           NOT NULL
);

INSERT INTO bsg_references (reference) VALUES
('TRS Miniseries 0:45'),
('TRS S1 E1 0:00');
CREATE TABLE cylon_kills (
  cylon_killer_model_number    INT            NOT NULL,
  person_victim_id             INT            DEFAULT NULL
);

INSERT INTO cylon_kills (cylon_killer_model_number, person_victim_id) VALUES
(6, NULL)
;
CREATE TABLE ships (
  id                    INT            PRIMARY KEY,
  name                  VARCHAR(255)   NOT NULL      UNIQUE,
  class                 VARCHAR(255)   NOT NULL,
  crew                  INT            NOT NULL,
  capacity              INT            NOT NULL,
  role                  VARCHAR(60)    NOT NULL,
  FTL                   ENUM('Y', 'N') NOT NULL,
  network               ENUM('Y', 'N') DEFAULT NULL
);

INSERT INTO ships (name, class, crew, capacity, role, FTL, network) VALUES
('Galactica',    'Colonial Battlestar',    5000,  NULL,  'Battlestar', 'Y',  'N'),
('Pegasus',      'Colonial Battlestar',    1750,  NULL,  'Battlestar', 'Y',  'Y'),
('Colonial One', 'Commercial',             2,     150,   'Passenger',  'Y',  NULL),
('Viper Mark 2', 'Viper',                  1,     NULL,  'Fighter',    'N',  NULL),
('Viper Mark 7', 'Viper',                  1,     NULL,  'Fighter',    'N',  NULL);

CREATE TABLE bsg_time (
  time_value            INT            NOT NULL,
  reference_id          INT            NOT NULL
);

INSERT INTO bsg_time (time_value, reference_id) VALUES
(0,         1),
(100,       2);

CREATE TABLE employers (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  name                  VARCHAR(60)    NOT NULL
);

INSERT INTO employers (name) VALUES
('Caprica Government'),
('Twelve Colonies'),
('Battlestar Galactica'),
('Battlestar Pegesus'),
('Cylon Robotics');
CREATE TABLE person_kills (
  person_killer_id             INT            NOT NULL,
  person_victim_id             INT            DEFAULT NULL,
  cylon_victim_model_number    INT            DEFAULT NULL
);


-- CREATE TABLE military_ranks (
--   id                    INT            PRIMARY KEY   AUTO_INCREMENT,
--   order                 INT            NOT NULL      UNIQUE,
--   rank                  VARCHAR(60)    NOT NULL
-- );

-- INSERT INTO military_ranks (order, rank) VALUES
-- ('Commander',  1)
-- ('Captain',    2),
-- ('Lieutenant', 3);

CREATE TABLE cylons (
  model_number          INT            DEFAULT NULL,
  type                  VARCHAR(60)    DEFAULT NULL,
  gender                VARCHAR(60)    DEFAULT NULL
);

INSERT INTO cylons (model_number, type, gender) VALUES
(NULL, 'IL-series',  NULL),
(NULL, 'centurion',  NULL),
(1,    'humanoid',   'man'),
(2,    'humanoid',   'man'),
(3,    'humanoid',   'woman'),
(4,    'humanoid',   'man'),
(5,    'humanoid',   'man'),
(6,    'humanoid',   'woman'),
(7,    'humanoid',   NULL),
(8,    'humanoid',   'woman'),
(9,    NULL,         NULL),
(10,   NULL,         NULL),
(11,   NULL,         NULL),
(12,   NULL,         NULL);

CREATE TABLE tech (
  id                    INT            PRIMARY KEY,
  name                  VARCHAR(255)   NOT NULL      UNIQUE,
  description           TEXT           DEFAULT NULL
);

INSERT INTO tech (name, description) VALUES
('FTL Drive',         NULL),
('Cylon Detector',    NULL);


CREATE TABLE people (
  id                    INT                                 PRIMARY KEY   AUTO_INCREMENT,
  first_name            VARCHAR(60)                         NOT NULL,
  last_name             VARCHAR(60)                         NOT NULL,
  salutation            ENUM('Dr.', 'Mr.', 'Ms.', 'Sir')    DEFAULT NULL,
  call_sign             INT                                 DEFAULT NULL,
  home_colony_id        INT                                 DEFAULT NULL
);

INSERT INTO people (
	first_name, 
	last_name, 
	salutation,
	call_sign,
	home_colony_id
	) VALUES
('Lee',         'Adama',      'Sir',   'Apollo',      4),
('William',     'Adama',      'Sir',   'Husker',      4),
('Kara',        'Thrace',     'Sir',   'Starbuck',    4),
('Gaius',       'Baltar',     'Dr.',   NULL,          1),
('Laura',       'Roslin',     'Ms.',   NULL,          4),
('Leoben',      'Conoy',      'Mr.',   NULL,          NULL),
('Sharon',      'Valerii',    'Sir',   'Boomer',      NULL),
('Sharon',      'Agathon',    'Sir',   'Athena',      NULL),
('Saul',        'Tigh',       'Sir',   NULL,          13),
('Aaron',       'Doral',      'Mr.',   NULL,          NULL),
('Billy',       'Keikeya',    'Mr.',   NULL,          8),
('Galen',       'Tyrol',      'Sir',   NULL,          13),
('Anastasia',   'Dualla',     'Sir',   NULL,          9),
('Felix',       'Gaeta',      'Sir',   NULL,          NULL),
('Cally',       'Henderson',  'Sir',   NULL,          NULL),
('Karl',        'Agathon',    'Sir',   'Helo',        4),
('Samuel T.',   'Anders',     'Sir',   NULL,          13)

;
CREATE TABLE relationships (
  person1_id             INT            NOT NULL,
  person2_id             INT            NOT NULL,
  start_bsg_time         INT            DEFAULT NULL,
  end_bsg_time           INT            DEFAULT NULL
);


CREATE TABLE colonies (
  id                    INT            PRIMARY KEY,
  name                  VARCHAR(60)    NOT NULL
);

INSERT INTO colonies (model_number, type) VALUES
(1,  'Aerilon'),
(2,  'Aquaria'),
(3,  'Canceron'),
(4,  'Caprica'),
(5,  'Gemenon'),
(6,  'Leonis'),
(7,  'Libran'),
(8,  'Picon'),
(9,  'Sagittaron'),
(10, 'Scorpia'),
(11, 'Tauron'),
(12, 'Virgon'),
(13, 'Earth');

CREATE TABLE employees (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  person_id             INT            NOT NULL,
  employer_id           INT            NOT NULL,
  position              VARCHAR(60)    NOT NULL,
  civialian_rank_id     INT            DEFAULT NULL,
  military_rank_id      INT            DEFAULT NULL,
  start_bsg_time        INT            DEFAULT NULL,
  end_bsg_time          INT            DEFAULT NULL
);

INSERT INTO employees (
	person_id, 
	employer_id,
	position,
	civialian_rank_id,
	military_rank_id,
	start_bsg_time,
	end_bsg_time
	) VALUES
(4, 1, 'Computer Scientist',                       NULL, NULL, NULL, NULL),
(4, 2, 'Chief Scientific Consultant and Analyst',  NULL, NULL, NULL, NULL),
(4, 2, 'Vice President',                           2,    NULL, NULL, NULL),
(4, 2, 'President',                                1,    NULL, NULL, NULL)
;
CREATE TABLE ships_tech (
  ship_id             INT            NOT NULL,
  tech_id             INT            NOT NULL
);


CREATE TABLE bsg_references (
  id                         INT            PRIMARY KEY,
  reference                  TEXT           NOT NULL
);

INSERT INTO bsg_references (reference) VALUES
('TRS Miniseries 0:45'),
('TRS S1 E1 0:00');
CREATE TABLE cylon_kills (
  cylon_killer_model_number    INT            NOT NULL,
  person_victim_id             INT            DEFAULT NULL
);


CREATE TABLE ships (
  id                    INT            PRIMARY KEY,
  name                  VARCHAR(255)   NOT NULL      UNIQUE,
  class                 VARCHAR(255)   NOT NULL,
  crew                  INT            NOT NULL,
  capacity              INT            NOT NULL,
  role                  VARCHAR(60)    NOT NULL,
  FTL                   ENUM('Y', 'N') NOT NULL,
  network               ENUM('Y', 'N') DEFAULT NULL
);

INSERT INTO ships (name, class, crew, capacity, role, FTL, network) VALUES
('Galactica',    'Colonial Battlestar',    5000,  NULL,  'Battlestar', 'Y',  'N'),
('Pegasus',      'Colonial Battlestar',    1750,  NULL,  'Battlestar', 'Y',  'Y'),
('Colonial One', 'Commercial',             2,     150,   'Passenger',  'Y',  NULL),
('Viper Mark 2', 'Viper',                  1,     NULL,  'Fighter',    'N',  NULL),
('Viper Mark 7', 'Viper',                  1,     NULL,  'Fighter',    'N',  NULL);

CREATE TABLE bsg_time (
  time_value            INT            NOT NULL,
  reference_id          INT            NOT NULL
);

INSERT INTO bsg_time (time_value, reference_id) VALUES
(0,         1),
(100,       2);

CREATE TABLE employers (
  id                    INT            PRIMARY KEY,
  name                  VARCHAR(60)    NOT NULL
);

INSERT INTO employers (name) VALUES
('Caprica Government'),
('Twelve Colonies'),
('Battlestar Galactica'),
('Battlestar Pegesus'),
('Cylon Robotics');
CREATE TABLE person_kills (
  person_killer_id             INT            NOT NULL,
  person_victim_id             INT            DEFAULT NULL,
  cylon_victim_model_number    INT            DEFAULT NULL
);


-- CREATE TABLE military_ranks (
--   id                    INT            PRIMARY KEY   AUTO_INCREMENT,
--   order                 INT            NOT NULL      UNIQUE,
--   rank                  VARCHAR(60)    NOT NULL
-- );

-- INSERT INTO military_ranks (order, rank) VALUES
-- ('Commander',  1)
-- ('Captain',    2),
-- ('Lieutenant', 3);

CREATE TABLE cylons (
  model_number          INT            DEFAULT NULL,
  type                  VARCHAR(60)    DEFAULT NULL,
  gender                VARCHAR(60)    DEFAULT NULL
);

INSERT INTO cylons (model_number, type, gender) VALUES
(NULL, 'IL-series',  NULL),
(NULL, 'centurion',  NULL),
(1,    'humanoid',   'man'),
(2,    'humanoid',   'man'),
(3,    'humanoid',   'woman'),
(4,    'humanoid',   'man'),
(5,    'humanoid',   'man'),
(6,    'humanoid',   'woman'),
(7,    'humanoid',   NULL),
(8,    'humanoid',   'woman'),
(9,    NULL,         NULL),
(10,   NULL,         NULL),
(11,   NULL,         NULL),
(12,   NULL,         NULL);

CREATE TABLE tech (
  id                    INT            PRIMARY KEY,
  name                  VARCHAR(255)   NOT NULL      UNIQUE,
  description           TEXT           DEFAULT NULL
);

INSERT INTO tech (name, description) VALUES
('FTL Drive',         NULL),
('Cylon Detector',    NULL);


CREATE TABLE people (
  id                    INT                                 PRIMARY KEY,
  first_name            VARCHAR(60)                         NOT NULL,
  last_name             VARCHAR(60)                         NOT NULL,
  salutation            ENUM('Dr.', 'Mr.', 'Ms.', 'Sir')    DEFAULT NULL,
  call_sign             INT                                 DEFAULT NULL,
  home_colony_id        INT                                 DEFAULT NULL
);

INSERT INTO people (
	first_name, 
	last_name, 
	salutation,
	call_sign,
	home_colony_id
	) VALUES
('Lee',         'Adama',      'Sir',   'Apollo',      4),
('William',     'Adama',      'Sir',   'Husker',      4),
('Kara',        'Thrace',     'Sir',   'Starbuck',    4),
('Gaius',       'Baltar',     'Dr.',   NULL,          1),
('Laura',       'Roslin',     'Ms.',   NULL,          4),
('Leoben',      'Conoy',      'Mr.',   NULL,          NULL),
('Sharon',      'Valerii',    'Sir',   'Boomer',      NULL),
('Sharon',      'Agathon',    'Sir',   'Athena',      NULL),
('Saul',        'Tigh',       'Sir',   NULL,          13),
('Aaron',       'Doral',      'Mr.',   NULL,          NULL),
('Billy',       'Keikeya',    'Mr.',   NULL,          8),
('Galen',       'Tyrol',      'Sir',   NULL,          13),
('Anastasia',   'Dualla',     'Sir',   NULL,          9),
('Felix',       'Gaeta',      'Sir',   NULL,          NULL),
('Cally',       'Henderson',  'Sir',   NULL,          NULL),
('Karl',        'Agathon',    'Sir',   'Helo',        4),
('Samuel T.',   'Anders',     'Sir',   NULL,          13)

;
CREATE TABLE relationships (
  person1_id             INT            NOT NULL,
  person2_id             INT            NOT NULL,
  start_bsg_time         INT            DEFAULT NULL,
  end_bsg_time           INT            DEFAULT NULL
);


CREATE TABLE colonies (
  id                    INT            PRIMARY KEY,
  name                  VARCHAR(60)    NOT NULL
);

INSERT INTO colonies (id, name) VALUES
(1,  'Aerilon'),
(2,  'Aquaria'),
(3,  'Canceron'),
(4,  'Caprica'),
(5,  'Gemenon'),
(6,  'Leonis'),
(7,  'Libran'),
(8,  'Picon'),
(9,  'Sagittaron'),
(10, 'Scorpia'),
(11, 'Tauron'),
(12, 'Virgon'),
(13, 'Earth');

CREATE TABLE employees (
  id                    INT            PRIMARY KEY,
  person_id             INT            NOT NULL,
  employer_id           INT            NOT NULL,
  position              VARCHAR(60)    NOT NULL,
  civialian_rank_id     INT            DEFAULT NULL,
  military_rank_id      INT            DEFAULT NULL,
  start_bsg_time        INT            DEFAULT NULL,
  end_bsg_time          INT            DEFAULT NULL
);

INSERT INTO employees (
	person_id, 
	employer_id,
	position,
	civialian_rank_id,
	military_rank_id,
	start_bsg_time,
	end_bsg_time
	) VALUES
(4, 1, 'Computer Scientist',                       NULL, NULL, NULL, NULL),
(4, 2, 'Chief Scientific Consultant and Analyst',  NULL, NULL, NULL, NULL),
(4, 2, 'Vice President',                           2,    NULL, NULL, NULL),
(4, 2, 'President',                                1,    NULL, NULL, NULL)
;
CREATE TABLE ships_tech (
  ship_id             INT            NOT NULL,
  tech_id             INT            NOT NULL
);


CREATE TABLE bsg_references (
  id                         INT            PRIMARY KEY   AUTO_INCREMENT,
  reference                  TEXT           NOT NULL
);

INSERT INTO bsg_references (reference) VALUES
('TRS Miniseries 0:45'),
('TRS S1 E1 0:00');
CREATE TABLE cylon_kills (
  cylon_killer_model_number    INT            NOT NULL,
  person_victim_id             INT            DEFAULT NULL
);


CREATE TABLE ships (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  name                  VARCHAR(255)   NOT NULL      UNIQUE,
  class                 VARCHAR(255)   NOT NULL,
  crew                  INT            NOT NULL,
  capacity              INT            NOT NULL,
  role                  VARCHAR(60)    NOT NULL,
  FTL                   ENUM('Y', 'N') NOT NULL,
  network               ENUM('Y', 'N') DEFAULT NULL
);

INSERT INTO ships (name, class, crew, capacity, role, FTL, network) VALUES
('Galactica',    'Colonial Battlestar',    5000,  NULL,  'Battlestar', 'Y',  'N'),
('Pegasus',      'Colonial Battlestar',    1750,  NULL,  'Battlestar', 'Y',  'Y'),
('Colonial One', 'Commercial',             2,     150,   'Passenger',  'Y',  NULL),
('Viper Mark 2', 'Viper',                  1,     NULL,  'Fighter',    'N',  NULL),
('Viper Mark 7', 'Viper',                  1,     NULL,  'Fighter',    'N',  NULL);

CREATE TABLE bsg_time (
  time_value            INT            NOT NULL,
  reference_id          INT            NOT NULL
);

INSERT INTO bsg_time (time_value, reference_id) VALUES
(0,         1),
(100,       2);

CREATE TABLE employers (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  name                  VARCHAR(60)    NOT NULL
);

INSERT INTO employers (name) VALUES
('Caprica Government'),
('Twelve Colonies'),
('Battlestar Galactica'),
('Battlestar Pegesus'),
('Cylon Robotics');
CREATE TABLE person_kills (
  person_killer_id             INT            NOT NULL,
  person_victim_id             INT            DEFAULT NULL,
  cylon_victim_model_number    INT            DEFAULT NULL
);


-- CREATE TABLE military_ranks (
--   id                    INT            PRIMARY KEY   AUTO_INCREMENT,
--   order                 INT            NOT NULL      UNIQUE,
--   rank                  VARCHAR(60)    NOT NULL
-- );

-- INSERT INTO military_ranks (order, rank) VALUES
-- ('Commander',  1)
-- ('Captain',    2),
-- ('Lieutenant', 3);

CREATE TABLE cylons (
  model_number          INT            DEFAULT NULL,
  type                  VARCHAR(60)    DEFAULT NULL,
  gender                VARCHAR(60)    DEFAULT NULL
);

INSERT INTO cylons (model_number, type, gender) VALUES
(NULL, 'IL-series',  NULL),
(NULL, 'centurion',  NULL),
(1,    'humanoid',   'man'),
(2,    'humanoid',   'man'),
(3,    'humanoid',   'woman'),
(4,    'humanoid',   'man'),
(5,    'humanoid',   'man'),
(6,    'humanoid',   'woman'),
(7,    'humanoid',   NULL),
(8,    'humanoid',   'woman'),
(9,    NULL,         NULL),
(10,   NULL,         NULL),
(11,   NULL,         NULL),
(12,   NULL,         NULL);

CREATE TABLE tech (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  name                  VARCHAR(255)   NOT NULL      UNIQUE,
  description           TEXT           DEFAULT NULL
);

INSERT INTO tech (name, description) VALUES
('FTL Drive',         NULL),
('Cylon Detector',    NULL);


CREATE TABLE people (
  id                    INT                                 PRIMARY KEY AUTO_INCREMENT,
  first_name            VARCHAR(60)                         NOT NULL,
  last_name             VARCHAR(60)                         NOT NULL,
  salutation            ENUM('Dr.', 'Mr.', 'Ms.', 'Sir')    DEFAULT NULL,
  call_sign             INT                                 DEFAULT NULL,
  home_colony_id        INT                                 DEFAULT NULL
);

INSERT INTO people (
	first_name, 
	last_name, 
	salutation,
	call_sign,
	home_colony_id
	) VALUES
('Lee',         'Adama',      'Sir',   'Apollo',      4),
('William',     'Adama',      'Sir',   'Husker',      4),
('Kara',        'Thrace',     'Sir',   'Starbuck',    4),
('Gaius',       'Baltar',     'Dr.',   NULL,          1),
('Laura',       'Roslin',     'Ms.',   NULL,          4),
('Leoben',      'Conoy',      'Mr.',   NULL,          NULL),
('Sharon',      'Valerii',    'Sir',   'Boomer',      NULL),
('Sharon',      'Agathon',    'Sir',   'Athena',      NULL),
('Saul',        'Tigh',       'Sir',   NULL,          13),
('Aaron',       'Doral',      'Mr.',   NULL,          NULL),
('Billy',       'Keikeya',    'Mr.',   NULL,          8),
('Galen',       'Tyrol',      'Sir',   NULL,          13),
('Anastasia',   'Dualla',     'Sir',   NULL,          9),
('Felix',       'Gaeta',      'Sir',   NULL,          NULL),
('Cally',       'Henderson',  'Sir',   NULL,          NULL),
('Karl',        'Agathon',    'Sir',   'Helo',        4),
('Samuel T.',   'Anders',     'Sir',   NULL,          13)

;
CREATE TABLE relationships (
  person1_id             INT            NOT NULL,
  person2_id             INT            NOT NULL,
  start_bsg_time         INT            DEFAULT NULL,
  end_bsg_time           INT            DEFAULT NULL
);


CREATE TABLE colonies (
  id                    INT            PRIMARY KEY,
  name                  VARCHAR(60)    NOT NULL
);

INSERT INTO colonies (id, name) VALUES
(1,  'Aerilon'),
(2,  'Aquaria'),
(3,  'Canceron'),
(4,  'Caprica'),
(5,  'Gemenon'),
(6,  'Leonis'),
(7,  'Libran'),
(8,  'Picon'),
(9,  'Sagittaron'),
(10, 'Scorpia'),
(11, 'Tauron'),
(12, 'Virgon'),
(13, 'Earth');

CREATE TABLE employees (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  person_id             INT            NOT NULL,
  employer_id           INT            NOT NULL,
  position              VARCHAR(60)    NOT NULL,
  civialian_rank_id     INT            DEFAULT NULL,
  military_rank_id      INT            DEFAULT NULL,
  start_bsg_time        INT            DEFAULT NULL,
  end_bsg_time          INT            DEFAULT NULL
);

INSERT INTO employees (
	person_id, 
	employer_id,
	position,
	civialian_rank_id,
	military_rank_id,
	start_bsg_time,
	end_bsg_time
	) VALUES
(4, 1, 'Computer Scientist',                       NULL, NULL, NULL, NULL),
(4, 2, 'Chief Scientific Consultant and Analyst',  NULL, NULL, NULL, NULL),
(4, 2, 'Vice President',                           2,    NULL, NULL, NULL),
(4, 2, 'President',                                1,    NULL, NULL, NULL)
;
-- CREATE TABLE event_types (
--   id                    INT            PRIMARY KEY   AUTO_INCREMENT,
--   type                  INT            NOT NULL      UNIQUE
-- );

-- INSERT INTO event_types (type) VALUES
-- ('Insurrection'),
-- ('Battle'),
-- ('Assassination'),
-- ('Election'),
-- ('Reconnaissance'),
-- ('Interrogation'),
-- ('Trial')
-- ;

CREATE TABLE cylons_people (
  model_number          INT            NOT NULL,
  person_id             INT            UNIQUE
);

INSERT INTO cylons_people (model_number, person_id) VALUES
(2, 6),
(8, 7),
(8, 8),
(5, 10)
;
CREATE TABLE civilian_ranks (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  name                 INT            NOT NULL      UNIQUE,
  order                  VARCHAR(60)    NOT NULL
);

INSERT INTO civilian_ranks (name, order) VALUES
('President',       1)
('Vice President',  2),
('Official',        10);

-- # find the highest Colonial Fleet military and civilian ranks of all Cylons
-- # find the distribution of the total civilian and military population
-- # kill statistics, total kills over bsg_time
-- # length of employment statistics
CREATE TABLE events (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  event_type_id         INT            NOT NULL,   
  event_description     TEXT           DEFAULT NULL
  reference_id          INT            NOT NULL
);


-- CREATE TABLE event_types (
--   id                    INT            PRIMARY KEY   AUTO_INCREMENT,
--   type                  INT            NOT NULL      UNIQUE
-- );

-- INSERT INTO event_types (type) VALUES
-- ('Insurrection'),
-- ('Battle'),
-- ('Assassination'),
-- ('Election'),
-- ('Reconnaissance'),
-- ('Interrogation'),
-- ('Trial')
-- ;

CREATE TABLE cylons_people (
  model_number          INT            NOT NULL,
  person_id             INT            UNIQUE
);

INSERT INTO cylons_people (model_number, person_id) VALUES
(2, 6),
(8, 7),
(8, 8),
(5, 10)
;
CREATE TABLE civilian_ranks (
  id                    INT            PRIMARY KEY,
  name                 INT            NOT NULL      UNIQUE,
  order                  VARCHAR(60)    NOT NULL
);

INSERT INTO civilian_ranks (name, order) VALUES
('President',       1)
('Vice President',  2),
('Official',        10);

-- # find the highest Colonial Fleet military and civilian ranks of all Cylons
-- # find the distribution of the total civilian and military population
-- # kill statistics, total kills over bsg_time
-- # length of employment statistics
CREATE TABLE events (
  id                    INT            PRIMARY KEY,
  event_type_id         INT            NOT NULL,   
  event_description     TEXT           DEFAULT NULL
  reference_id          INT            NOT NULL
);


-- CREATE TABLE event_types (
--   id                    INT            PRIMARY KEY   AUTO_INCREMENT,
--   type                  INT            NOT NULL      UNIQUE
-- );

-- INSERT INTO event_types (type) VALUES
-- ('Insurrection'),
-- ('Battle'),
-- ('Assassination'),
-- ('Election'),
-- ('Reconnaissance'),
-- ('Interrogation'),
-- ('Trial')
-- ;

CREATE TABLE cylons_people (
  model_number          INT            NOT NULL,
  person_id             INT            UNIQUE
);

INSERT INTO cylons_people (model_number, person_id) VALUES
(2, 6),
(8, 7),
(8, 8),
(5, 10)
;
CREATE TABLE civilian_ranks (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  order                 INT            NOT NULL      UNIQUE,
  rank                  VARCHAR(60)    NOT NULL
);

INSERT INTO civilian_ranks (name, order) VALUES
('President',       1)
('Vice President',  2),
('Official',        10);

-- # find the highest Colonial Fleet military and civilian ranks of all Cylons
-- # find the distribution of the total civilian and military population
-- # kill statistics, total kills over bsg_time
-- # length of employment statistics
CREATE TABLE events (
  id                    INT            PRIMARY KEY,
  event_type_id         INT            NOT NULL,   
  event_description     TEXT           DEFAULT NULL
  reference_id          INT            NOT NULL
);


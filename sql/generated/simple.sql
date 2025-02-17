
DROP TABLE IF EXISTS people;

CREATE TABLE people (
  id                    INTEGER                             PRIMARY KEY AUTOINCREMENT,
  first_name            VARCHAR(60)                         NOT NULL,
  last_name             VARCHAR(60)                         NOT NULL,
  salutation            VARCHAR(10)                         DEFAULT NULL,
  call_sign             VARCHAR(60)                         DEFAULT NULL,
  dob                   DATE                                DEFAULT NULL,
  weight_lbs            DECIMAL(5,2)                        DEFAULT NULL,
  height_m              DECIMAL(5,2)                        DEFAULT NULL,
  gender                VARCHAR(10)                         DEFAULT NULL,
  dna_mutations_n       INTEGER                             DEFAULT NULL,
  home_colony_id        INTEGER                             DEFAULT NULL
);

INSERT INTO people (
  id,
	first_name, 
	last_name, 
	salutation,
	call_sign,
  dob,
  weight_lbs,
  height_m,
  gender,
  dna_mutations_n,
	home_colony_id
	) VALUES

(NULL, 'Lee',         'Adama',      'Sir',   'Apollo',       date('3730-03-25'),     155,    1.78,      'M',      1556,          4),
(NULL, 'William',     'Adama',      'Sir',   'Husker',       date('3700-01-15'),     200,    1.74,      'M',      5454544,       4),
(NULL, 'Kara',        'Thrace',     'Sir',   'Starbuck',     date('3735-11-26'),     120,    1.60,      'F',      25444,         4),
(NULL, 'Gaius',       'Baltar',     'Dr.',   NULL,           date('3715-07-05'),     160,    1.70,      'M',      3566,          1),
(NULL, 'Laura',       'Roslin',     'Ms.',   NULL,           date('3705-03-01'),     115,    1.55,      'F',      534354354,     4),
(NULL, 'Leoben',      'Conoy',      'Mr.',   NULL,           date('3715-03-06'),     155,    1.70,      'M',      150,           NULL),
(NULL, 'Sharon',      'Valerii',    'Sir',   'Boomer',       date('3735-08-13'),     116,    1.56,      'F',      188,           NULL),
(NULL, 'Sharon',      'Agathon',    'Sir',   'Athena',       date('3735-09-20'),     116,    1.56,      'F',      90,            NULL),
(NULL, 'Saul',        'Tigh',       'Sir',   NULL,           date('3690-08-19'),     170,    1.70,      'M',      7756664,       13),
(NULL, 'Aaron',       'Doral',      'Mr.',   NULL,           date('3720-12-14'),     160,    1.80,      'M',      35,            NULL),
(NULL, 'Billy',       'Keikeya',    'Mr.',   NULL,           date('3727-11-15'),     158,    1.75,      'M',      4415,          8),
(NULL, 'Galen',       'Tyrol',      'Sir',   NULL,           date('3720-10-05'),     185,    1.85,      'M',      11321,         13),
(NULL, 'Anastasia',   'Dualla',     'Sir',   NULL,           date('3725-04-01'),     121,    1.59,      'F',      44556,         9),
(NULL, 'Felix',       'Gaeta',      'Sir',   NULL,           date('3726-04-09'),     150,    1.68,      'M',      7548,          NULL),
(NULL, 'Cally',       'Henderson',  'Sir',   NULL,           date('3738-01-16'),     110,    1.55,      'F',      566,           NULL),
(NULL, 'Karl',        'Agathon',    'Sir',   'Helo',         date('3724-08-17'),     166,    1.80,      'M',      5785,          4),
(NULL, 'Samuel T.',   'Anders',     'Sir',   NULL,           date('3735-10-02'),     180,    1.77,      'M',      445,           13)

;
DROP TABLE IF EXISTS cylons;

CREATE TABLE cylons (
  id                    INTEGER        PRIMARY KEY AUTOINCREMENT, 
  model_number          INT            DEFAULT NULL,
  type                  VARCHAR(60)    DEFAULT NULL,
  gender                VARCHAR(60)    DEFAULT NULL
);

INSERT INTO cylons (id, model_number, type, gender) VALUES
(NULL, NULL, 'IL-series',  NULL),
(NULL, NULL, 'centurion',  NULL),
(NULL, NULL, 'raider',     NULL),
(NULL, 1,    'humanoid',   'man'),
(NULL, 2,    'humanoid',   'man'),
(NULL, 3,    'humanoid',   'woman'),
(NULL, 4,    'humanoid',   'man'),
(NULL, 5,    'humanoid',   'man'),
(NULL, 6,    'humanoid',   'woman'),
(NULL, 7,    'humanoid',   NULL),
(NULL, 8,    'humanoid',   'woman'),
(NULL, 9,    NULL,         NULL),
(NULL, 10,   NULL,         NULL),
(NULL, 11,   NULL,         NULL),
(NULL, 12,   NULL,         NULL)
;

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
DROP TABLE IF EXISTS colonies;

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

DROP TABLE IF EXISTS person_actions;

CREATE TABLE person_actions (
  id                        INTEGER PRIMARY KEY,
  action_name               TEXT NOT NULL,
  action_timestamp          TEXT DEFAULT (datetime('now', 'localtime')),
  source_person_id          INT DEFAULT NULL,
  target_person_id          INT DEFAULT NULL
);
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
  id                    INTEGER        PRIMARY KEY AUTOINCREMENT,
  person_id             INT            NOT NULL,
  employer_id           INT            NOT NULL,
  position              VARCHAR(60)    NOT NULL,
  dept_id               INT            NOT NULL,
  salary                FLOAT          NOT NULL,
  civialian_rank_id     INT            DEFAULT NULL,
  military_rank_id      INT            DEFAULT NULL
);

-- INSERT INTO employees (
--   id,
-- 	person_id, 
-- 	employer_id,
-- 	position,
--   dept_id,
--   salary,
-- 	civialian_rank_id,
-- 	military_rank_id
-- 	) VALUES
-- (NULL, 4, 1, 'Computer Scientist',                       2, 80000, NULL, NULL)
-- ;
DROP TABLE IF EXISTS employers;

CREATE TABLE employers (
  id                    INTEGER        PRIMARY KEY AUTOINCREMENT,
  name                  VARCHAR(60)    NOT NULL
);

INSERT INTO employers (id, name) VALUES
(NULL, 'Caprica Government'),
(NULL, 'Twelve Colonies'),
(NULL, 'Battlestar Galactica'),
(NULL, 'Battlestar Pegesus'),
(NULL, 'Cylon Robotics');
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
  id                    INTEGER        PRIMARY KEY AUTOINCREMENT,
  name                  VARCHAR(60)    NOT NULL
);

INSERT INTO departments (id, name) VALUES
(NULL, 'Executive Branch'),
(NULL, 'Research and Development'),
(NULL, 'Space Force');

DROP TABLE IF EXISTS people;

CREATE TABLE people (
  id                    INTEGER                             PRIMARY KEY AUTOINCREMENT,
  first_name            VARCHAR(60)                         NOT NULL,
  last_name             VARCHAR(60)                         NOT NULL,
  salutation            VARCHAR(10)                         DEFAULT NULL,
  call_sign             VARCHAR(60)                         DEFAULT NULL,
  home_colony_id        INTEGER                            DEFAULT NULL
);

INSERT INTO people (
  id,
	first_name, 
	last_name, 
	salutation,
	call_sign,
	home_colony_id
	) VALUES
(NULL, 'Lee',         'Adama',      'Sir',   'Apollo',      4),
(NULL, 'William',     'Adama',      'Sir',   'Husker',      4),
(NULL, 'Kara',        'Thrace',     'Sir',   'Starbuck',    4),
(NULL, 'Gaius',       'Baltar',     'Dr.',   NULL,          1),
(NULL, 'Laura',       'Roslin',     'Ms.',   NULL,          4),
(NULL, 'Leoben',      'Conoy',      'Mr.',   NULL,          NULL),
(NULL, 'Sharon',      'Valerii',    'Sir',   'Boomer',      NULL),
(NULL, 'Sharon',      'Agathon',    'Sir',   'Athena',      NULL),
(NULL, 'Saul',        'Tigh',       'Sir',   NULL,          13),
(NULL, 'Aaron',       'Doral',      'Mr.',   NULL,          NULL),
(NULL, 'Billy',       'Keikeya',    'Mr.',   NULL,          8),
(NULL, 'Galen',       'Tyrol',      'Sir',   NULL,          13),
(NULL, 'Anastasia',   'Dualla',     'Sir',   NULL,          9),
(NULL, 'Felix',       'Gaeta',      'Sir',   NULL,          NULL),
(NULL, 'Cally',       'Henderson',  'Sir',   NULL,          NULL),
(NULL, 'Karl',        'Agathon',    'Sir',   'Helo',        4),
(NULL, 'Samuel T.',   'Anders',     'Sir',   NULL,          13)

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
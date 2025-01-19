
DROP TABLE IF EXISTS people;

CREATE TABLE people (
  id                    INTEGER                             PRIMARY KEY AUTOINCREMENT,
  first_name            VARCHAR(60)                         NOT NULL,
  last_name             VARCHAR(60)                         NOT NULL,
  salutation            VARCHAR(10)                         DEFAULT NULL,
  call_sign             VARCHAR(60)                         DEFAULT NULL,
  home_colony_id        INTEGER                             DEFAULT NULL
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

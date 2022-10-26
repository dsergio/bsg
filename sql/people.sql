
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
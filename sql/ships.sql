
CREATE TABLE ships (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  name                  VARCHAR(255)   NOT NULL      UNIQUE,
  class                 VARCHAR(255)   NOT NULL      UNIQUE,
  crew                  INT            NOT NULL,
  capacity              INT            NOT NULL,
  role                  VARCHAR(60)    NOT NULL,
  FTL                   ENUM('Y', 'N') NOT NULL,
  network               ENUM('Y', 'N') DEFAULT NULL
);

INSERT INTO ships (name, crew, type) VALUES
('Galactica',    'Colonial Battlestar',    5000,  NULL,  'Battlestar', 'Y',  'N'),
('Pegasus',      'Colonial Battlestar',    1750,  NULL,  'Battlestar', 'Y',  'Y'),
('Colonial One', 'Commercial',             2,     150,   'Passenger',  'Y',  NULL),
('Viper Mark 2', 'Viper',                  1,     NULL,  'Fighter',    'N',  NULL),
('Viper Mark 7', 'Viper',                  1,     NULL,  'Fighter',    'N',  NULL);

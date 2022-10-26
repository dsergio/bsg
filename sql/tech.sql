
CREATE TABLE tech (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  name                  VARCHAR(255)   NOT NULL      UNIQUE,
  description           TEXT           DEFAULT NULL
);

INSERT INTO tech (name, description) VALUES
('FTL Drive',         NULL),
('Cylon Detector',    NULL),
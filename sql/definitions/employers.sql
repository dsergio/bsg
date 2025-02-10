
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
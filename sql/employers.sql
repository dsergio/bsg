

CREATE TABLE employers (
  id                    INTEGER        PRIMARY KEY AUTOINCREMENT,
  name                  VARCHAR(60)    NOT NULL
);

INSERT INTO employers (name) VALUES
('Caprica Government'),
('Twelve Colonies'),
('Battlestar Galactica'),
('Battlestar Pegesus'),
('Cylon Robotics');
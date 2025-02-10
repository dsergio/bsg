
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
  id                    INTEGER        PRIMARY KEY AUTOINCREMENT,
  name                  VARCHAR(60)    NOT NULL
);

INSERT INTO departments (id, name) VALUES
(NULL, 'Executive Branch'),
(NULL, 'Research and Development'),
(NULL, 'Space Force');
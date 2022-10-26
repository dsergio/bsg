
CREATE TABLE civilian_ranks (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  order                 INT            NOT NULL      UNIQUE,
  rank                  VARCHAR(60)    NOT NULL
);

INSERT INTO civilian_ranks (name, order) VALUES
('President',       1)
('Vice President',  2),
('Official',        10);
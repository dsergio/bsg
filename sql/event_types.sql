
CREATE TABLE event_types (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  type                  INT            NOT NULL      UNIQUE
);

INSERT INTO event_types (type) VALUES
('Insurrection'),
('Battle'),
('Assassination'),
('Election'),
('Reconnaissance'),
('Interrogation'),
('Trial'),
;

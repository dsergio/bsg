
CREATE TABLE events (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  event_type_id         INT            NOT NULL,   
  event_description     TEXT           DEFAULT NULL
  reference_id          INT            NOT NULL
);

INSERT INTO employment_events (event_type_id, event_description) VALUES

;
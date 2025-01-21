
DROP TABLE IF EXISTS person_actions;

CREATE TABLE person_actions (
  id                        INTEGER PRIMARY KEY,
  action_name               TEXT NOT NULL,
  action_timestamp          TEXT DEFAULT (datetime('now', 'localtime'))
  source_person_id          INT DEFAULT NULL,
  target_person_id          INT DEFAULT NULL,
);
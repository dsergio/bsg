
CREATE TABLE person_kills (
  person_killer_id             INT            NOT NULL,
  person_victim_id             INT            DEFAULT NULL,
  cylon_victim_model_number    INT            DEFAULT NULL,
);

INSERT INTO person_kills (person_killer_id, person_victim_id, cylon_victim_model_number) VALUES
(1, NULL, NULL)
;
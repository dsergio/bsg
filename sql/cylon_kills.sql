
CREATE TABLE cylon_kills (
  cylon_killer_model_number    INT            NOT NULL,
  person_victim_id             INT            DEFAULT NULL
);

INSERT INTO cylon_kills (cylon_killer_model_number, person_victim_id) VALUES
(6, NULL)
;
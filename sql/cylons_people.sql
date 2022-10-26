
CREATE TABLE cylons_people (
  model_number          INT            NOT NULL,
  person_id             INT            UNIQUE
);

INSERT INTO cylons_people (model_number, person_id) VALUES
(2, 6),
(8, 7),
(8, 8),
(5, 10)
;
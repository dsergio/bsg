
DROP TABLE IF EXISTS person_kills;

CREATE TABLE person_kills (
  person_killer_id             INT            NOT NULL,
  person_victim_id             INT            DEFAULT NULL,
  cylon_victim_id              INT            DEFAULT NULL
);

INSERT INTO person_kills (
  person_killer_id,
	person_victim_id, 
	cylon_victim_id
	)

SELECT p.id, NULL, c.id FROM people p, cylons c 
WHERE p.first_name = 'Kara' AND p.last_name = 'Thrace' AND c.type = 'raider'

;
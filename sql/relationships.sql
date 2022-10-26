
CREATE TABLE relationships (
  person1_id             INT            NOT NULL,
  person2_id             INT            NOT NULL,
  start_bsg_time         INT            DEFAULT NULL,
  end_bsg_time           INT            DEFAULT NULL
);

INSERT INTO relationships (person1_id, person2_id) VALUES
(1, 3)
;
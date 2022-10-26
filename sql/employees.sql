
CREATE TABLE employees (
  id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  person_id             INT            NOT NULL,
  employer_id           INT            NOT NULL,
  position              VARCHAR(60)    NOT NULL,
  civialian_rank_id     INT            DEFAULT NULL,
  military_rank_id      INT            DEFAULT NULL,
  start_bsg_time        INT            DEFAULT NULL,
  end_bsg_time          INT            DEFAULT NULL
);

INSERT INTO employees (
	person_id, 
	employer_id,
	position,
	civialian_rank_id,
	military_rank_id,
	on_duty,
	start_bsg_time,
	end_bsg_time
	) VALUES
(4, 1, 'Computer Scientist',                       NULL, NULL, NULL, NULL),
(4, 2, 'Chief Scientific Consultant and Analyst',  NULL, NULL, NULL, NULL),
(4, 2, 'Vice President',                           2,    NULL, NULL, NULL),
(4, 2, 'President',                                1,    NULL, NULL, NULL)
;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
  id                    INTEGER        PRIMARY KEY AUTOINCREMENT,
  person_id             INT            NOT NULL,
  employer_id           INT            NOT NULL,
  position              VARCHAR(60)    NOT NULL,
  dept_id               INT            NOT NULL,
  salary                FLOAT          NOT NULL,
  civialian_rank_id     INT            DEFAULT NULL,
  military_rank_id      INT            DEFAULT NULL
);

-- INSERT INTO employees (
--   id,
-- 	person_id, 
-- 	employer_id,
-- 	position,
--   dept_id,
--   salary,
-- 	civialian_rank_id,
-- 	military_rank_id
-- 	) VALUES
-- (NULL, 4, 1, 'Computer Scientist',                       2, 80000, NULL, NULL)
-- ;
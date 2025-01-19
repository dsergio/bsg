
DROP TABLE IF EXISTS cylons;

CREATE TABLE cylons (
  model_number          INT            DEFAULT NULL,
  type                  VARCHAR(60)    DEFAULT NULL,
  gender                VARCHAR(60)    DEFAULT NULL
);

INSERT INTO cylons (model_number, type, gender) VALUES
(NULL, 'IL-series',  NULL),
(NULL, 'centurion',  NULL),
(1,    'humanoid',   'man'),
(2,    'humanoid',   'man'),
(3,    'humanoid',   'woman'),
(4,    'humanoid',   'man'),
(5,    'humanoid',   'man'),
(6,    'humanoid',   'woman'),
(7,    'humanoid',   NULL),
(8,    'humanoid',   'woman'),
(9,    NULL,         NULL),
(10,   NULL,         NULL),
(11,   NULL,         NULL),
(12,   NULL,         NULL);

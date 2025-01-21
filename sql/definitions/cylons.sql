
DROP TABLE IF EXISTS cylons;

CREATE TABLE cylons (
  id                    INTEGER        PRIMARY KEY AUTOINCREMENT, 
  model_number          INT            DEFAULT NULL,
  type                  VARCHAR(60)    DEFAULT NULL,
  gender                VARCHAR(60)    DEFAULT NULL
);

INSERT INTO cylons (id, model_number, type, gender) VALUES
(NULL, NULL, 'IL-series',  NULL),
(NULL, NULL, 'centurion',  NULL),
(NULL, NULL, 'raider',     NULL),
(NULL, 1,    'humanoid',   'man'),
(NULL, 2,    'humanoid',   'man'),
(NULL, 3,    'humanoid',   'woman'),
(NULL, 4,    'humanoid',   'man'),
(NULL, 5,    'humanoid',   'man'),
(NULL, 6,    'humanoid',   'woman'),
(NULL, 7,    'humanoid',   NULL),
(NULL, 8,    'humanoid',   'woman'),
(NULL, 9,    NULL,         NULL),
(NULL, 10,   NULL,         NULL),
(NULL, 11,   NULL,         NULL),
(NULL, 12,   NULL,         NULL)
;

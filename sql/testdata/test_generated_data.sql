-- Insert employers
INSERT INTO employers (id, name) VALUES
(NULL, 'Caprica Ministry of Defense'),
(NULL, 'Colonial Fleet'),
(NULL, 'Aerilon Spaceworks'),
(NULL, 'Picon Defense Systems'),
(NULL, 'Scorpia Shipyards'),
(NULL, 'Leonis University'),
(NULL, 'Sagittaron Medical Institute'),
(NULL, 'Tauron Industrial Corp'),
(NULL, 'Virgon Aerospace'),
(NULL, 'Libran Judiciary');

-- Insert departments
INSERT INTO departments (id, name) VALUES
(NULL, 'Engineering'),
(NULL, 'Medical Corps'),
(NULL, 'Tactical Operations'),
(NULL, 'Colonial Intelligence'),
(NULL, 'Flight Operations'),
(NULL, 'Cyber Warfare'),
(NULL, 'Propulsion Systems'),
(NULL, 'Artificial Intelligence Research'),
(NULL, 'Astronautics'),
(NULL, 'Military Strategy');

-- Insert employees with SELECT subqueries for person_id, employer_id, and dept_id
INSERT INTO employees (id, person_id, employer_id, position, dept_id, salary, civialian_rank_id, military_rank_id) VALUES
(NULL, (SELECT id FROM people WHERE first_name = 'Lee' AND last_name = 'Adama'), 
     (SELECT id FROM employers WHERE name = 'Colonial Fleet'), 'Commander', 
     (SELECT id FROM departments WHERE name = 'Tactical Operations'), 120000, NULL, 6),

(NULL, (SELECT id FROM people WHERE first_name = 'William' AND last_name = 'Adama'), 
     (SELECT id FROM employers WHERE name = 'Colonial Fleet'), 'Fleet Admiral', 
     (SELECT id FROM departments WHERE name = 'Tactical Operations'), 150000, NULL, 7),

(NULL, (SELECT id FROM people WHERE first_name = 'Kara' AND last_name = 'Thrace'), 
     (SELECT id FROM employers WHERE name = 'Colonial Fleet'), 'Pilot', 
     (SELECT id FROM departments WHERE name = 'Flight Operations'), 90000, NULL, 4),

(NULL, (SELECT id FROM people WHERE first_name = 'Gaius' AND last_name = 'Baltar'), 
     (SELECT id FROM employers WHERE name = 'Caprica Government'), 'Research Scientist', 
     (SELECT id FROM departments WHERE name = 'Artificial Intelligence Research'), 100000, 4, NULL),

(NULL, (SELECT id FROM people WHERE first_name = 'Laura' AND last_name = 'Roslin'), 
     (SELECT id FROM employers WHERE name = 'Caprica Government'), 'President', 
     (SELECT id FROM departments WHERE name = 'Executive Branch'), 200000, NULL, NULL),

(NULL, (SELECT id FROM people WHERE first_name = 'Saul' AND last_name = 'Tigh'), 
     (SELECT id FROM employers WHERE name = 'Colonial Fleet'), 'Executive Officer', 
     (SELECT id FROM departments WHERE name = 'Tactical Operations'), 110000, NULL, 5),

(NULL, (SELECT id FROM people WHERE first_name = 'Sharon' AND last_name = 'Agathon'), 
     (SELECT id FROM employers WHERE name = 'Colonial Fleet'), 'Raptor Pilot', 
     (SELECT id FROM departments WHERE name = 'Flight Operations'), 95000, NULL, 4),

(NULL, (SELECT id FROM people WHERE first_name = 'Samuel T.' AND last_name = 'Anders'), 
     (SELECT id FROM employers WHERE name = 'Colonial Fleet'), 'Resistance Leader', 
     (SELECT id FROM departments WHERE name = 'Military Strategy'), 102000, NULL, 5),

(NULL, (SELECT id FROM people WHERE first_name = 'Felix' AND last_name = 'Gaeta'), 
     (SELECT id FROM employers WHERE name = 'Colonial Fleet'), 'Operations Officer', 
     (SELECT id FROM departments WHERE name = 'Tactical Operations'), 92000, NULL, 4),

(NULL, (SELECT id FROM people WHERE first_name = 'Anastasia' AND last_name = 'Dualla'), 
     (SELECT id FROM employers WHERE name = 'Colonial Fleet'), 'Communications Officer', 
     (SELECT id FROM departments WHERE name = 'Tactical Operations'), 87000, NULL, 3),

(NULL, (SELECT id FROM people WHERE first_name = 'Galen' AND last_name = 'Tyrol'), 
     (SELECT id FROM employers WHERE name = 'Scorpia Shipyards'), 'Chief Engineer', 
     (SELECT id FROM departments WHERE name = 'Engineering'), 95000, 3, NULL),

(NULL, (SELECT id FROM people WHERE first_name = 'Karl' AND last_name = 'Agathon'), 
     (SELECT id FROM employers WHERE name = 'Colonial Fleet'), 'Pilot', 
     (SELECT id FROM departments WHERE name = 'Flight Operations'), 92000, NULL, 4),

(NULL, (SELECT id FROM people WHERE first_name = 'Aaron' AND last_name = 'Doral'), 
     (SELECT id FROM employers WHERE name = 'Picon Defense Systems'), 'Public Relations Officer', 
     (SELECT id FROM departments WHERE name = 'Executive Branch'), 80000, 3, NULL),

(NULL, (SELECT id FROM people WHERE first_name = 'Billy' AND last_name = 'Keikeya'), 
     (SELECT id FROM employers WHERE name = 'Caprica Government'), 'Chief of Staff', 
     (SELECT id FROM departments WHERE name = 'Executive Branch'), 85000, 4, NULL),

(NULL, (SELECT id FROM people WHERE first_name = 'Cally' AND last_name = 'Henderson'), 
     (SELECT id FROM employers WHERE name = 'Scorpia Shipyards'), 'Mechanic', 
     (SELECT id FROM departments WHERE name = 'Engineering'), 78000, 2, NULL),

(NULL, (SELECT id FROM people WHERE first_name = 'Leoben' AND last_name = 'Conoy'), 
     (SELECT id FROM employers WHERE name = 'Tauron Industrial Corp'), 'Philosopher', 
     (SELECT id FROM departments WHERE name = 'Artificial Intelligence Research'), 89000, 3, NULL);
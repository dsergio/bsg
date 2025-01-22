
import random

def generate_actions_sql(n = 100, people_ids = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]):


	actions = ["fight", "save", "help", "betray", "forgive"]
	actions_sql = []

	for i in range(n):
		
		c = random.choice(people_ids)
		d = random.choice(people_ids)
		a = random.choice(actions)

		action = f"INSERT INTO person_actions (id, action_name, source_person_id, target_person_id) VALUES (NULL, '{a}', {c}, {d});"

		actions_sql.append(action)

	return actions_sql

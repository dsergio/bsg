
import random
import numpy as np
import math

class MyUtils:
    
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
    
    
	def z_transform(X, degree = 2):
		''' Transforming traing samples to the Z space
			X: n x d matrix of samples, excluding the x_0 = 1 feature
			degree: the degree of the Z space
			return: the n x d' matrix of samples in the Z space, excluding the z_0 = 1 feature.
			It can be mathematically calculated: d' = \sum_{k=1}^{degree} (k+d-1) \choose (d-1)
		'''
	
	
		######### place here the code that you have submitted for the previous programming assignment.
		
		if degree == 1:
			return X

		Z = X.copy()
		n, d = X.shape
		l = []
		for i in range(d):
			l.append(i)
		
		q = 0
		p = d
		for i in range(2, degree + 1):
			g = 0
			for j in range(q, p):
				for k in range(l[j], d):
					temp = Z[:,j] * X[:,k]
					Z = np.append(Z, temp.reshape(-1, 1), 1)
					l.append(k)
					g += 1
			q = p
			p =  p + g
		return Z
    
    
    ## below are the code that your instructor wrote for feature normalization. You can feel free to use them
    ## but you don't have to, if you want to use your own code or other library functions. 

	def normalize_0_1(X):
		''' Normalize the value of every feature into the [0,1] range, using formula: x = (x-x_min)/(x_max - x_min)
			1) First shift all feature values to be non-negative by subtracting the min of each column 
			if that min is negative.
			2) Then divide each feature value by the max of the column if that max is not zero. 
			
			X: n x d matrix of samples, excluding the x_0 = 1 feature. X can have negative numbers.
			return: the n x d matrix of samples where each feature value belongs to [0,1]
		'''

		n, d = X.shape
		X_norm = X.astype('float64') # Have a copy of the data in float

		for i in range(d):
			col_min = min(X_norm[:,i])
			col_max = max(X_norm[:,i])
			gap = col_max - col_min
			if gap:
				X_norm[:,i] = (X_norm[:,i] - col_min) / gap
			else:
				X_norm[:,i] = 0 #X_norm[:,i] - X_norm[:,i]
		
		return X_norm

	def normalize_neg1_pos1(X):
		''' Normalize the value of every feature into the [-1,+1] range. 
			
			X: n x d matrix of samples, excluding the x_0 = 1 feature. X can have negative numbers.
			return: the n x d matrix of samples where each feature value belongs to [-1,1]
		'''

		n, d = X.shape
		X_norm = X.astype('float64') # Have a copy of the data in float

		for i in range(d):
			col_min = min(X_norm[:,i])
			col_max = max(X_norm[:,i])
			col_mid = (col_max + col_min) / 2
			gap = (col_max - col_min) / 2
			if gap:
				X_norm[:,i] = (X_norm[:,i] - col_mid) / gap
			else: 
				X_norm[:,i] = 0 #X_norm[:,i] - X_norm[:,i]

		return X_norm



import os.path

# Define the file's name.

from os import listdir
from os.path import isfile, join
files = ["people.sql", "cylons.sql", "colonies.sql", "person_kills.sql"]

content = ""

for filename in files:
	filename = "../sql/" + filename
	if not os.path.isfile(filename):
		print('File does not exist: ' + filename)
	elif filename != 'generate.py':
	    # Open the file and read its content.
	    with open(filename) as f:
	        content = content + f.read()


	    # Display the file's content line by line.
	    #for line in content:
	        #print(line)



f = open("../sql/generated/simple.sql", "w")
f.write(content)
f.close()
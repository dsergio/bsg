import pandas as pd
import random
import faker
from datetime import datetime, timedelta

# class Generator:

# Function to generate a random DOB
def random_dob():
    start_date = datetime(3650, 1, 1)
    end_date = datetime(3750, 12, 31)
    random_days = random.randint(0, (end_date - start_date).days)
    dob = start_date + timedelta(days=random_days)
    return dob.strftime("%Y-%m-%d")

# Function to assign mutations intelligently
def assign_dna_mutations(age, is_cylon):
    if is_cylon:
        return random.randint(20, 200)  # Cylons have very small DNA mutations
    if age < 25:
        return random.randint(50, 1000)  # Young people can have low mutations too
    return random.randint(1000, 700000)  # Older/sicker people may have more mutations

def assign_weight(age):
    if age < 5:
        return round(random.uniform(2, 40), 2) 
    if age < 10:
        return round(random.uniform(20, 100), 2) 
    else:
        return round(random.randint(100, 250), 2) 
    


# Function to determine if a person is a Cylon
def determine_cylon(percent_cylon):
    return random.random() < percent_cylon  # percent_cylon of the population are Cylons

def generate_people_data(n = 100, percent_cylon = 0.1):
    
    fake = faker.Faker()
    
    data = []
    for i in range(1, n + 1):
        
        is_cylon = determine_cylon(percent_cylon)
        if (is_cylon):
            cylon = 1
        else:
            cylon = -1
        
        first_name = fake.first_name()
        last_name = fake.last_name()
        salutation = random.choice(["Mr.", "Ms.", "Dr.", "Sir", ""])
        call_sign = ""
        
        dob = random_dob()
        dob_year = int(dob.split("-")[0])
        age = 3760 - dob_year  # Assuming current year is 3760

        height_m = round(random.uniform(1.5, 1.9), 2)  # Realistic height
        weight_lbs = assign_weight(age)
        
        gender = random.choice(["M", "F"])

        
        dna_mutations_n = assign_dna_mutations(age, is_cylon)

        home_colony_id = random.choice([random.randint(1, 13), ""])  # Some missing values

        data.append([i, first_name, last_name, salutation, call_sign, dob, weight_lbs, height_m, gender, dna_mutations_n, home_colony_id, cylon])

    # Create DataFrame
    df = pd.DataFrame(data, columns=[
        "id", "first_name", "last_name", "salutation", "call_sign", 
        "dob", "weight_lbs", "height_m", "gender", "dna_mutations_n", "home_colony_id", "is_cylon"
    ])

    # Save to CSV
    df.to_csv("./data/bsg_people_data.csv", index=False)
    print("Generated 100 rows of data and saved to 'bsg_people_data.csv'")

    # Preview first 10 rows
    print(df.head(10))

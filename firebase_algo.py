import firebase_admin
from firebase_admin import credentials, db

# Initialize Firebase
cred_obj = credentials.Certificate('key.json')
default_app = firebase_admin.initialize_app(cred_obj, {
    'databaseURL': "https://hackplaksha-aaf62-default-rtdb.asia-southeast1.firebasedatabase.app/"
})
ref = db.reference("/")
import json
with open("data.json", "r") as f:
	file_contents = json.load(f)
ref.set(file_contents)

# Function to find matches for a specific user and sort the results
def find_and_sort_matches_for_user(user_name):
    user_ref = ref.child(user_name)
    user_data = user_ref.get()
    if user_data is None:
        print(f"User '{user_name}' not found.")
        return []

    # List to store matches, their match count, and num of matches
    matches_with_count = []

    # Retrieve all users except the current user
    all_users_ref = ref.order_by_key().get()
    for user_id, user_info in all_users_ref.items():
        if user_id != user_name:
            # Calculate the score based on matching Q1-Q4 of user 1 with Q5-Q8 of user 2 and vice versa
            score = sum(1 for q1, q2 in zip(list(user_data.values())[:4], list(user_info.values())[4:]) if q1 == q2)
            score += sum(1 for q1, q2 in zip(list(user_data.values())[4:], list(user_info.values())[:4]) if q1 == q2)
            matches_with_count.append((user_id, score))

    # Sort matches by score in descending order
    sorted_matches = sorted(matches_with_count, key=lambda x: x[1], reverse=True)
    
    return sorted_matches

# Example usage
user_name = "Person 10"
sorted_matches = find_and_sort_matches_for_user(user_name)
print(f"Matches for {user_name}:")
for match, score in sorted_matches:
    print(f"{match}: Score - {score}")
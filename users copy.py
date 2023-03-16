from charset_normalizer import api
import tweepy
import config
import csv
import pandas as pd

# authentication
client = tweepy.Client(bearer_token=config.bearer_token)

filename = open('tweets.csv', 'r')
file = csv.DictReader(filename)
author_IDs = []

for col in file:
    author_IDs.append(col['Author ID'])

columns = ['ID', 'Name', 'Username', 'Date',
           'Location', 'Followers']
data = []

i = 0

for id in author_IDs:
    if i < 800:
        try:
            users = client.get_user(
                id=id, user_fields=['created_at', 'location', 'public_metrics'])
            if users.data != None:
                data.append([id, users.data.name, users.data.username,
                             users.data.created_at, users.data.location, users.data.public_metrics['followers_count']])
        except:
            print("ID not valid")
    else:
        break
    i = i+1

df = pd.DataFrame(data, columns=columns)
df.to_csv('users.csv')

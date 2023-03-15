from charset_normalizer import api
import tweepy
import pandas as pd
import config


# authentication

client = tweepy.Client(bearer_token=config.bearer_token)

# search tweets and save to csv file
query = "(#style OR #fashion OR #ootd) lang:en -is:retweet"

columns = ['ID', 'Author ID', 'Tweet', 'Date']

data = []


for tweet in tweepy.Paginator(client.search_recent_tweets, query=query, tweet_fields=['author_id', 'created_at', 'public_metrics'], max_results=100).flatten(limit=200):
    data.append([tweet.id, tweet.author_id, tweet.text,
                 tweet.created_at])


df = pd.DataFrame(data, columns=columns)
df.to_csv('tweets.csv')

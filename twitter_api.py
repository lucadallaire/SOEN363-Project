import tweepy
import pandas as pd
import config


bearer_token = config.bearer_token

# authentication

client = tweepy.Client(bearer_token)

# search tweets
query = "#fashion -is:retweet"
tweets = client.search_recent_tweets(query=query, max_results=100)


columns = ['ID', 'Tweet']
data = []
for tweet in tweets.data:
    data.append([tweet.id, tweet.text])

df = pd.DataFrame(data, columns=columns)
df.to_csv('tweets.csv')

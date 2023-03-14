import tweepy
import pandas as pd
import config


# authentication

client = tweepy.Client(bearer_token=config.bearer_token)

# search tweets and save to csv file
query = "(style OR fashion trends) lang:en -is:retweet"

columns = ['ID', 'Tweet']
data = []
for tweet in tweepy.Paginator(client.search_recent_tweets, query=query, max_results=100).flatten(limit=1000):
    data.append([tweet.id, tweet.text])

df = pd.DataFrame(data, columns=columns)
df.to_csv('tweets.csv')

from charset_normalizer import api
import tweepy
import pandas as pd
import config
import re


# authentication

client = tweepy.Client(bearer_token=config.bearer_token)

# search tweets and save to csv file
query = "(#fashion) lang:en -is:retweet"

columns = ['ID', 'Author ID', 'Tweet', 'Date', 'Brand']

data = []
brands = ["Dior", "Chanel", "Louis Vuitton", "Hermès", "GUCCI"]

for tweet in tweepy.Paginator(client.search_recent_tweets, query=query, tweet_fields=['author_id', 'created_at', 'public_metrics'], max_results=100).flatten(limit=200):
    '''
    b = ""
    for brand in brands:
        if re.search(brand, tweet.text, re.IGNORECASE):
            b = brand
            break
    '''
    brand = "test"
    data.append([tweet.id, tweet.author_id, tweet.text,
                 tweet.created_at, brand])


df = pd.DataFrame(data, columns=columns)
df.to_csv('tweets.csv')

import tweepy
import pandas as pd
import requests


bearer_token = "AAAAAAAAAAAAAAAAAAAAAHsplgEAAAAAGsWXI4bZ8lwpn74DVofP%2FVF0fxQ%3D7w2IO2jVZ7xpugZpMfa403agyquBzGKQZwqgsb4DmRwvPMWwKt"

# authentication

client = tweepy.Client(bearer_token)

# search tweets
query = "fashion -is:retweet"
tweets = client.search_recent_tweets(query=query, max_results=100)


for tweet in tweets.data:
    print(tweet)

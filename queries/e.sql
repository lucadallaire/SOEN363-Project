SELECT SUM(tweets.author_id), brands.tweet FROM tweets, brands 
WHERE tweets.tweet = brands.tweet
GROUP BY brands.tweet;

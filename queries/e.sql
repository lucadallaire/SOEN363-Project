SELECT SUM(tweets.author_id), brand.tweet FROM tweets, brand 
WHERE tweets.tweet = brand.tweet
GROUP BY brand.tweet;

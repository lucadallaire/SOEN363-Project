SELECT MAX(tweets.author_id), brands.tweet
FROM tweets, brands
WHERE tweets.author_id >= 10 AND brands.tweet = tweets.tweet 
GROUP BY brands.tweet;

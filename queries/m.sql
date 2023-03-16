SELECT MAX(tweets.author_id), brand.tweet
FROM tweets, brand
WHERE tweets.author_id >= 10 AND brand.tweet = tweets.tweet 
GROUP BY brand.tweet;

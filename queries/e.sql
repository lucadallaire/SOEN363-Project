SELECT SUM(id), brand.description FROM tweets, brand 
WHERE tweets.tweet = brand.description
GROUP BY brand.description;

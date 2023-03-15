SELECT MAX(id), brand.description
FROM tweets, brand
WHERE id >= 10 AND brand.description = tweets.tweet 
GROUP BY brand.description;

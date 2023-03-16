SELECT brand.author_id, color.author_id
FROM tweets, brand, color
WHERE tweets.author_id = brand.author_id AND brand.author_id = color.author_id;

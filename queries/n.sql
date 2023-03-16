SELECT brand.author_id, users.id
FROM tweets, brand, users
WHERE tweets.author_id = brand.author_id AND brand.author_id = users.id;


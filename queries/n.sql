SELECT brands.author_id, users.id
FROM tweets, brands, users
WHERE tweets.author_id = brands.author_id AND brands.author_id = users.id;


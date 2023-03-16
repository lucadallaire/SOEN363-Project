SELECT MAX(author_id), id
FROM tweets
WHERE author_id >= 5
GROUP BY id;

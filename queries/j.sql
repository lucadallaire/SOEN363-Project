SELECT MAX(id), author_id
FROM tweets
WHERE id >= 5
GROUP BY author_id;

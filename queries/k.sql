-- Retrieve the row that has the kth highest numerical value in a particular column. (k>5)
SELECT  *
FROM tweets
WHERE author_id = (SELECT MAX(author_id) FROM tweets) AND author_id > 5;

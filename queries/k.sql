-- Retrieve the row that has the kth highest numerical value in a particular column. (k>5)
SELECT  *
FROM Tweets
WHERE id = (SELECT MAX(id) FROM tweets) AND id > 5;
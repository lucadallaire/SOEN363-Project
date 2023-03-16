-- Retrieve the row that has the kth highest numerical value in a particular column. (k>5)
SELECT  *
FROM users
WHERE followers = (SELECT MAX(followers) FROM users) AND followers > 5;

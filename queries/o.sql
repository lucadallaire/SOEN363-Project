-- Retrieve the values from two columns of table1, table2, and table3 
-- where the values of a specific column in table1 match the values of 
-- a specific column in table2, and the values of a specific column in table2 
-- match the values of a specific column in table3, and also show only the rows 
-- where the values of a specific column in table1 starts with specific letter.
SELECT t.tweet
FROM tweets t
JOIN brand b ON t.author_id = b.author_id AND t.date = b.date
JOIN color c ON b.author_id = c.author_id AND b.date = c.date
WHERE t.tweet LIKE 'A%'
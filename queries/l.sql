-- Retrieve a list of values in a certain column along with the number of times they appear 
-- in that column, only if they appear more than once, and group them by the values of the column, 
-- and the value of another column falls within a certain range of dates.
SELECT id, COUNT(*)
FROM Tweets
WHERE id IN
    (     SELECT id
          FROM Tweets
          GROUP BY id
          HAVING COUNT(*) > 1
    )
group by id
ORDER BY COUNT(*) DESC
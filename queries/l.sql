-- Retrieve a list of values in a certain column along with the number of times they appear 
-- in that column, only if they appear more than once, and group them by the values of the column, 
-- and the value of another column falls within a certain range of dates.
SELECT brand, COUNT(*) as count
FROM brands
WHERE date BETWEEN '2008-01-01 12:00:00' AND '2023-03-16 12:00:00'
GROUP BY brand
HAVING COUNT(*) > 1

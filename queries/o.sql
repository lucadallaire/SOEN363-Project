-- Retrieve the values from two columns of table1, table2, and table3 
-- where the values of a specific column in table1 match the values of 
-- a specific column in table2, and the values of a specific column in table2 
-- match the values of a specific column in table3, and also show only the rows 
-- where the values of a specific column in table1 starts with specific letter.
SELECT S.id, S.description, B.id, B.description, C.id, C.description
FROM style S, brand B, color C
WHERE S.description LIKE 'A%' AND S.id = B.id AND S.description = B.decription AND
    B.id = C.id AND B.description = C.description;
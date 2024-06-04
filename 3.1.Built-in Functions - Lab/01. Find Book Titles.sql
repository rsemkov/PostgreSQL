SELECT title 
FROM books
WHERE SUBSTRING(title, 1, 3) = 'The'
ORDER BY ID;

-- Write a query to find all books whose titles start with "The". Order the result by id. 

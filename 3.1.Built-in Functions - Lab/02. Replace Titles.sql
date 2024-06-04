SELECT
	REPLACE(title, 'The', '***') as title
FROM books
WHERE SUBSTRING(title, 1, 3) = 'The'
ORDER BY id

-- Write a query to find all books, whose titles start with "The" and replace the substring with 3 asterisks. 
-- Retrieve data about the updated titles. Order the result by id.

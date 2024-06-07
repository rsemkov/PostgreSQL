SELECT
	title,
	ROUND(cost, 3) as modified_price
FROM books
ORDER BY id

-- Write a query to get each book’s title and cost (cost as modified_price) 
-- and format the output to 3 digits after the decimal point. Order by id. 

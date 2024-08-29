SELECT
	name, recipe, price
FROM
	products
WHERE
	price BETWEEN 10 AND 20
ORDER BY
	price DESC;

-- Retrieve all products with prices in the range of 10 to 20, and order the results by "price" in descending order. 
-- The required columns are "name", "recipe", and "price".

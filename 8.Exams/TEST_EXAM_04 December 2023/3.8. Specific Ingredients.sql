SELECT
	i.name AS ingredient_name,
	p.name AS product_name,
	d.name AS distributor_name
FROM
	ingredients AS i
JOIN
	products_ingredients AS pi
ON
	i.id = pi.ingredient_id
JOIN
	products AS p
ON 
	p.id = pi.product_id
JOIN
	distributors AS d
ON 
	d.id = i.distributor_id
WHERE
	(LOWER(i.name) LIKE '%mustard%') AND (d.country_id = 16)
ORDER BY
	p.name ASC
	
-- Write an SQL query to retrieve a list of ingredients and the corresponding products that contain them, 
-- and the names of the distributors for these ingredients. The query should only include products with 'mustard'
-- (it should be case-insensitive) in their ingredients "name" and distributors from a specific country ("country_id" = 16). 
-- Sort the results by "product_name" in ascending order.

SELECT
	d.name AS distributor_name,
	i.name AS ingredient_name,
	p.name AS product_name,
	AVG(rate) AS average_rate
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
JOIN
	feedbacks AS f
ON 
	f.product_id = p.id
GROUP BY
	distributor_name, ingredient_name, product_name
HAVING
	AVG(rate) BETWEEN 5 AND 8
ORDER BY
	distributor_name,
	ingredient_name, 
	product_name;
	
-- Select all distributors that distribute ingredients used in the manufacturing process of products with an 
-- average rating between 5 and 8 (inclusive). Order them first by "distributor_name". 
-- If there are one or more distributors with the same name, then order them by "ingredient_name". 
-- If, in the rare case, there are still duplicates, order by "product_name", all in ascending order.

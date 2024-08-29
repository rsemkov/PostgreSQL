SELECT
	p.name AS product_name,
	ROUND(AVG(price), 2) AS average_price,
	COUNT(product_id) AS total_feedbacks
FROM
	feedbacks AS f
JOIN
	products AS p
ON
	p.id = f.product_id
WHERE
	price > 15
GROUP BY
	p.name
HAVING
	COUNT(product_id) > 1
ORDER BY
	total_feedbacks, average_price DESC

-- Create an SQL query to fetch products with a price exceeding $15 and having more than one feedback. 
-- 	Calculate the average price for each group of products, rounding that average to two decimal places, and 
-- 	assign the result the label "average_price". Arrange the results in ascending order based on "total_feedbacks". 
-- 	In case of products having the same count of feedback, order the results by "average_price" in descending order. 
-- 	Include the columns "product_name", "average_price", and "total_feedbacks".

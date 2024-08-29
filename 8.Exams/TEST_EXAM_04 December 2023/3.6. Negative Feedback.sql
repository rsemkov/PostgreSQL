SELECT
	product_id, rate, description, customer_id, age, gender
FROM
	feedbacks AS f
JOIN
	customers AS c
ON
	c.id = f.customer_id
WHERE
	rate < 5.0 AND gender = 'F' AND age > 30
ORDER BY
	product_id DESC;

-- Select feedback records alongside the customers who provided them. Filter the feedbacks with a rating below 5.0 
-- and customers who are females ("gender" is 'F') with an age greater than 30.
-- Finally, order the results by "product_id" in descending order. 
-- The required columns are "product_id", "rate", "description", "customer_id", "age", and "gender".

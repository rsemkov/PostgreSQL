SELECT 
	full_name,
	COUNT(DISTINCT(car_id)) AS count_of_cars,
	SUM(bill) AS total_sum
FROM
	clients AS c
JOIN
	courses AS co
ON 
	co.client_id = c.id
WHERE
	full_name LIKE '_a%'
GROUP BY
	full_name
HAVING
	COUNT(DISTINCT(car_id)) > 1
ORDER BY
	full_name
    
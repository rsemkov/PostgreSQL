SELECT
	a.name AS address,
	CASE
		WHEN EXTRACT(HOUR FROM c.start) BETWEEN 6 AND 20 THEN 'Day'
		ELSE 'Night'
	END AS day_time,
	c.bill,
	cl.full_name,
	ca.make,
	ca.model,
	cat.name AS category_name
FROM
	courses AS c
LEFT JOIN
	addresses AS a
ON 
	a.id = c.from_address_id
LEFT JOIN 
	clients AS cl
ON 
	cl.id = c.client_id
LEFT JOIN
	cars AS ca
ON 
	ca.id = c.car_id
LEFT JOIN
	categories AS cat
ON 
	cat.id = ca.category_id
ORDER BY
	c.id

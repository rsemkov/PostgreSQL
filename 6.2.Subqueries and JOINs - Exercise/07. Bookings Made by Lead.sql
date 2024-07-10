SELECT 
	apartment_id, 
	booked_for, 
	first_name, 
	country
FROM
	bookings AS b
JOIN
	customers AS c
USING
	(customer_id)
WHERE 
	job_type = 'Lead'

-- Write a SQL query that selects the "apartment_id", "booked_for" nights, customer's "first_name", 
-- 	and "country" from the "bookings" and "customers" tables, respectively, by performing an INNER JOIN. 
-- 	Filter the results only to include bookings made by customers with a "job_type" of "Lead".

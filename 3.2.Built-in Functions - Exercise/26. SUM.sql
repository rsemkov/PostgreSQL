SELECT
	SUM(booked_for) as total_value
FROM 
	bookings
WHERE
	apartment_id = 90


-- To calculate the total value of bookings for the apartment, you can use an SQL query 
-- that retrieves the "booked_for" column from the "bookings" table and applies the SUM() function to it. 
-- Then, you can add a filter to select only the rows where the "apartment_id" is equal to 90.

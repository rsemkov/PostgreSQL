SELECT 
	country, count(*) AS booking_count
FROM
	apartments AS a
JOIN 
	bookings AS b
USING
	(apartment_id)
WHERE
	booked_at > '2021-05-18 07:52:09.904+03' AND booked_at < '2021-09-17 19:48:02.147+03'
GROUP BY
	country
ORDER BY
	booking_count DESC

-- Create a SQL query to determine which "country" is a popular vacation 
-- 	destination during the summer season by:
-- counting the number of bookings "booking_id" made for each "country" 
-- 	between '2021-05-18 07:52:09.904+03' and '2021-09-17 19:48:02.147+03' (exclusive)
-- grouping the results by the "country"
-- ordering the results in descending order based on the "booking_count".

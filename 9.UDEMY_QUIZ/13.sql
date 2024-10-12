SELECT 
	starttime AS start,
	name
FROM 
	cd.bookings
JOIN
	cd.facilities 
USING
	(facid)
WHERE
	DATE(starttime) = '2012-09-21' AND name LIKE 'Tennis Court%'
ORDER BY
	starttime

-- How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? 
-- Return a list of start time and facility name pairings, ordered by the time.

SELECT 
	starttime
FROM 
	cd.bookings
JOIN
	cd.members 
USING
	(memid)
WHERE
	CONCAT(firstname, ' ', surname) = 'David Farrell'
	
-- How can you produce a list of the start times for bookings by members named 'David Farrell'?

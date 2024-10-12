SELECT 
	facid,
	SUM(slots) AS "Total Sum"
FROM 
	cd.bookings
WHERE
	(EXTRACT(MONTH FROM starttime) = 9) AND (EXTRACT(YEAR FROM starttime) = 2012)
GROUP BY
	facid
ORDER BY
	SUM(slots)

-- Produce a list of the total number of slots booked per facility in the month of September 2012. 
-- Produce an output table consisting of facility id and slots, sorted by the number of slots.

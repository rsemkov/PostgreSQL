SELECT
	p.id,
	p.title,
	pi.duration,
	ROUND(pi.budget, 1) AS budget,
	TO_CHAR(pi.release_date, 'MM-YY') AS release_date
FROM
	productions AS p
JOIN 
	productions_info AS pi
ON 
	pi.id = p.production_info_id
WHERE
	EXTRACT(YEAR FROM pi.release_date) IN (2023, 2024)
		AND
	pi.budget > 1500000.00
ORDER BY
	budget ASC,
	duration DESC,
	p.id ASC
LIMIT 3;
	
-- Extract information about productions (id, title, duration, budget, and release_date). 
-- Filter productions that have been released in 2023 and 2024 year and have a budget greater than 1500000.00.
-- Format the release date as 'MM-YY' and round the budget value to the first decimal place.
-- Order the results by budget ascending, then by duration descending, and finally by production id ascending.
-- Display the first 3 results.
	
-- Required Columns
-- ⦁	id
-- ⦁	title
-- ⦁	duration
-- ⦁	budget
-- ⦁	release_date

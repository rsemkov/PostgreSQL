SELECT
	title,
	CASE
		WHEN pi.rating <= 3.50 THEN 'poor'
		WHEN pi.rating > 3.50 AND pi.rating <= 8.00 THEN 'good'
		WHEN pi.rating > 8.00 THEN 'excellent'
	END rating,
	CASE
		WHEN has_subtitles = true THEN 'Bulgarian'
		ELSE 'N/A'
	END subtitles,
	COUNT(actor_id) AS actors_count
FROM 
	productions_actors AS pa
JOIN
	productions AS p
ON 
	pa.production_id = p.id
JOIN
	productions_info AS pi
ON 
	pi.id = p.production_info_id
GROUP BY
		title, rating, subtitles
ORDER BY
	rating ASC,
	actors_count DESC,
	title ASC;
	
-- Extract production information from the database, including the title, rating, subtitles, and the 
-- count of participating actors for each production.
	
-- Classify the rating as follows:
-- ⦁	If the rating is equal to or less than 3.50, display "poor"
-- ⦁	If the rating is above 3.50 and less than or equal to 8.00, display "good"
-- ⦁	If the rating is above 8.00, display "excellent"
-- If the production has subtitles, display "Bulgarian", otherwise "N/A".
	
-- Order the results by rating ascending (classified value), then by the count of participating actors descending, and finally by title ascending.
-- Required Columns
-- ⦁	title
-- ⦁	rating
-- ⦁	subtitles
-- ⦁	actors_count

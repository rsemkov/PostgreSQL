SELECT
	p.id AS photo_id, 
	p.capture_date, 
	p.description, 
	count(*) AS comments_count
FROM 
	photos AS p
JOIN
	comments AS c
ON 
	c.photo_id = p.id
WHERE 
	description IS NOT NULL
GROUP BY
	p.id
ORDER BY
	comments_count DESC,
	photo_id ASC
LIMIT 3

-- Extract from the database, the top 3 most commented photos with their count of comments. 
-- Exclude those photos that have no description.
-- Sort the results by comments_count descending, then by photo id in ascending order.	
-- Required Columns
-- ⦁	id as photo_id
-- ⦁	capture_date
-- ⦁	description
-- ⦁	comments_count

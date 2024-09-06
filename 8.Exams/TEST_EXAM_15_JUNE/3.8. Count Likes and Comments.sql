SELECT
	p.id AS photo_id,
	COUNT(DISTINCT(l.id)) AS likes_count,
	COUNT(DISTINCT(c.id)) AS comments_count
FROM
	photos AS p
LEFT JOIN
	likes AS l
ON 
	l.photo_id = p.id
LEFT JOIN
	comments AS c
ON 
	c.photo_id = p.id
GROUP BY
	p.id
ORDER BY
	likes_count DESC,
	comments_count DESC,
	p.id ASC

-- Retrieve photo IDs along with associated likes count and comments count from the database.
-- Sort the results by the number of likes in descending order, then by the number of comments in descending order, 
-- and finally by photo id in ascending order.
-- Required Columns
-- ⦁	id as photo_id
-- ⦁	likes_count
-- ⦁	comments_count

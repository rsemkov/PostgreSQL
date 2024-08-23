SELECT
	CONCAT(first_name, ' ', last_name) AS full_name,
	CONCAT(LOWER(LEFT(first_name, 1)), RIGHT(last_name, 2), LENGTH(last_name), '@sm-cast.com'),
	awards
FROM
	actors
WHERE
	id NOT IN
		(SELECT actor_id FROM productions_actors)
ORDER BY
	awards DESC,
	id ASC;

-- Write a query that returns the full name, email, and awards of all actors not participating in any productions.
-- Construct their email using the first letter of their first name (lower case), the last two letters of their 
-- last name followed by the number of characters of the last name, and the domain "@sm-cast.com".
	
-- Order by awards in descending order then by id ascending.
	
-- Required Columns
-- ⦁	full_name (first_name + " " + last_name)
-- ⦁	email (a resulting string, according to the description above)
-- ⦁	awards

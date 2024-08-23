DELETE FROM 
	countries 
WHERE
	id NOT IN
		(SELECT country_id FROM actors)
AND
	id NOT IN
		(SELECT country_id FROM productions);
		
-- Delete all countries that don't have associated actors or productions

SELECT count(*) AS countries_without_rivers
	FROM countries AS c
	LEFT JOIN countries_rivers AS cr
	ON c.country_code = cr.country_code
	WHERE river_id IS NULL

-- Create an SQL query that retrieves data from the "table_relations_geography_db" database 
-- by joining the "countries" and "countries_rivers" tables based on their common data. 
-- Then, calculate the total number of countries that do not have any rivers.

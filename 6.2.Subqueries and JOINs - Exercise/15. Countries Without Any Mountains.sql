SELECT
	COUNT(*) AS countries_without_mountains
FROM 
	countries AS c
LEFT JOIN
	mountains_countries AS mc
USING
	(country_code)
WHERE 
	mountain_id IS NULL

-- Create an SQL query to retrieve the number of countries that do not have any mountains. 

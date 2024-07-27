SELECT 
	c.country_name, r.river_name
FROM 
	countries AS c
LEFT JOIN 
	countries_rivers AS cr
USING
	(country_code)
LEFT JOIN
	rivers AS r
ON
	r.id = cr.river_id
WHERE
	continent_code = 'AF'
ORDER BY
	country_name ASC
LIMIT 5


-- Write a SQL query that selects the "country_name" and "river_name" (if any) from the "countries", 
-- "countries_rivers" and "rivers" tables, respectively, for the first five countries in Africa. 
-- If a country has no river, the "river_name" should be NULL. 
-- The result should be ordered in ascending order based on the "country_name".

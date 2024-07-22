SELECT 
	country_code, mountain_range, peak_name, elevation
FROM
	mountains AS m
JOIN
	mountains_countries AS mc
ON 
	m.id = mc.mountain_id
JOIN
	peaks AS p
ON 
	m.id = p.mountain_id
WHERE
	elevation > 2835 AND country_code = 'BG'
ORDER BY
	elevation DESC

-- Retrieve the "country_code", "mountain_range", "peak_name" and "elevation" from the "mountains", 
-- 	"peaks", and "mountains_countries" tables using a SQL query. The query should only include rows where 
-- 	the peak "elevation" is greater than 2835 meters and the "country_code" is 'BG'. 
-- 	The results should be sorted in descending order based on peak "elevation".

SELECT
	MIN(avg_area) AS min_average_area
FROM
	(SELECT
		AVG(countries.area_in_sq_km) AS avg_area
	FROM 
		countries
	GROUP BY
		continent_code)
AS
	min_average_area

-- Compute the minimum average area among all the continents, where the average area is calculated 
-- as the average area of all the countries within each continent.

SELECT 
	continent_name,
	TRIM(continent_name) AS trim
FROM continents;

-- The TRIM() function also has another flag, which can help you 
-- remove trailing spaces from the "continent_name" values.

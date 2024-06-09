SELECT 
	continent_name,
	TRIM(continent_name) AS trim
FROM continents;

-- If you open the records in the "continents" table, you will find that there are additional spaces 
-- added to the front of some of the "continent_name" values. Use the TRIM() function with 
-- the appropriate flag to remove them.


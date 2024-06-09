SELECT 
	SUBSTRING("River Information" , '([0-9]{1,4})' ) AS river_length
FROM view_river_info


-- Compose an SQL query to fetch the "river_length" from the "River Information" 
-- 	column within the "view_river_info" view. Ensure that only the numerical 
-- 	value is selected from the string, with a maximum of four digits, ranging from 0 to 9.
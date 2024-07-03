SELECT mountain_range, peak_name, elevation
	FROM mountains 
	JOIN peaks 
	ON mountains.id = peaks.mountain_id
	WHERE mountain_range = 'Rila'
ORDER BY elevation DESC

-- Retrieve data from the " table_relations_geography_db" database by joining the "mountains" and 
--"peaks" tables using their common data. Then, display all peaks for the "Rila" mountain, 
--including the "mountain_range", "peak_name", and "elevation". Finally, sort the results in 
--descending order by the "elevation".

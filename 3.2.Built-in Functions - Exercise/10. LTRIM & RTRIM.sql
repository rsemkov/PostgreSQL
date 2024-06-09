SELECT 
	TRIM(LEADING 'M' FROM peak_name) AS left_trim,
	TRIM(TRAILING 'm' FROM peak_name) AS right_trim
FROM peaks;

-- remove the 'M' character from the left side of the "peak_name" column within 
-- the "peaks" table, and assign the name "left_trim" to the resulting new column
-- remove the 'm' character from the right side of 
-- the "peak_name" column within the "peaks" table, and assign the name "right_trim" to the resulting new column

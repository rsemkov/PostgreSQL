UPDATE countries
	SET country_code = REVERSE(LOWER(country_code))
	
-- Create a SQL query to update the values in the "country_code" column of 
-- the "countries" table. The update should convert the values to lowercase and reverse the string.

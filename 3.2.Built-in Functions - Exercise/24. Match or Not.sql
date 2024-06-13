SELECT
	companion_full_name,
	email
FROM 
	users
WHERE 
	companion_full_name ILIKE '%aNd%' AND
	email NOT LIKE '%@gmail'

-- the "companion_full_name" column should contain the substring '%aNd%' in a case-insensitive manner
-- the "email" column should NOT contain the substring '%@gmail' in a case-sensitive manner


SELECT
	username, gender, age
FROM
	accounts
WHERE
	age >= 18
AND
	LENGTH(username) > 9
ORDER BY
	age DESC,
	username ASC;
	
-- Extract information about accounts. Select only those whose age is greater than or equal to 18 years 
-- and the length of their username is greater than 9 symbols.
-- Order the results by age descending then by username ascending.
-- Required Columns
-- ⦁	username
-- ⦁	gender
-- ⦁	age

SELECT 
	SUBSTRING(description, 5) AS "substring"
FROM currencies

-- Develop an SQL query that removes a portion of the "description" column from the "currencies" table. 
-- The query should extract the string starting from the 5th character and return the rest of the string.
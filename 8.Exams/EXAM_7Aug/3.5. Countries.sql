SELECT
	id, name, continent, currency
FROM
	countries
WHERE
	(continent = 'South America')
		AND
	(currency LIKE 'P%'
		OR
	currency LIKE 'U%')
ORDER BY
	currency DESC,
	id ASC;

-- Extract from the database info about the countries in South America with currencies 
-- that start with the letter 'P' or the letter 'U'.
-- Sort the results by currency in descending order and then by id ascending.
-- Required Columns
-- ⦁	id
-- ⦁	name
-- ⦁	continent
-- ⦁	currency

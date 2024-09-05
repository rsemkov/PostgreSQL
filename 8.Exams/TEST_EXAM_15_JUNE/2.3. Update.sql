UPDATE addresses
SET country = CASE
	WHEN country LIKE 'B%' THEN 'Blocked'
	WHEN country LIKE 'T%' THEN 'Test'
	WHEN country LIKE 'P%' THEN 'In Progress'
	ELSE country
END;

-- Rename those countries from table 'addresses', which meet the following conditions:
-- ⦁	If the country name starts with 'B' - change it to 'Blocked'.
-- ⦁	If the country name starts with 'T' - change it to 'Test'.
-- ⦁	If the country name starts with 'P' - change it to 'In Progress'.

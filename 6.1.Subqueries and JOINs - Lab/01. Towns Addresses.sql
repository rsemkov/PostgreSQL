SELECT t.town_id, t.name AS town_name, address_text
	FROM 
		towns AS t
		JOIN addresses AS a
		ON t.town_id = a.town_id
	WHERE 
		t.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY
	town_id, address_id

-- Write a query to get information about the addresses in the database, which are in San Francisco, 
-- 	Sofia, or Carnation. Retrieve town_id, town_name, address_text. Order the result by town_id, 
-- 	then by address_id. Submit your queries in the Judge system.

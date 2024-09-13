DELETE FROM 
	clients
WHERE
	id NOT IN
		(SELECT client_id FROM courses)
	AND
		LENGTH(full_name) > 3


-- The criteria for removal are as follows: delete all clients from the clients table who do 
-- not have any associated courses and have a "full_name" length greater than 3 characters.
INSERT INTO 
	actors(first_name, last_name, birthdate, height, awards, country_id)
SELECT 
	REVERSE(first_name), 
	REVERSE(last_name),
	birthdate - INTERVAL '2 days',
	COALESCE(height, 0) + 10,
	country_id,
	(SELECT id from countries WHERE name = 'Armenia')	
FROM 
	actors
WHERE 
	id >= 10 AND id <= 20;

-- You must insert records with specific data into the actors' table.
-- The new data will be based on actors with IDs between 10 and 20 (inclusive). 

-- Insert data into the actors' table with the following values:
-- •	first_name - set it to the first name of the actor but reversed.
-- •	last_name - set it to the last name of the actor but reversed.
-- •	birthdate - set it to the birthdate of the actor but 2 days earlier.
-- •	height - set it to the height of the actor plus 10. Note that there should not be NULL height 
-- values for the new records. See the provided examples.
-- •	awards - set them to the country_id.
-- •	country_id - set it to the id of Armenia (Do not hard-code the id).

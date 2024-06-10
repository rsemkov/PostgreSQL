SELECT 
	CONCAT_WS(' ', mou.mountain_range, pe.peak_name) AS mountain_information,
	LENGTH(CONCAT_WS(' ', mou.mountain_range, pe.peak_name)) AS characters_length,
	BIT_LENGTH(CONCAT_WS(' ', mou.mountain_range, pe.peak_name)) AS bits_of_a_tring
FROM 
    mountains AS mou, peaks AS pe
WHERE 
    mou."id" = pe.mountain_id;

-- Combine the "mountain_range" column from the "mountains" table and the "peak_name" column from 
-- the "peaks" table into a single field called "mountain_information". 
-- Find the number of characters in the newly created text field and name the new column "characters_length". 
-- Additionally, express the length in bits and name the column "bits_of_a_tring".

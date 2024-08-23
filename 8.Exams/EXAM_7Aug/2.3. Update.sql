UPDATE 
	productions_info 
SET 
	duration = CASE
	    WHEN id < 15 THEN duration + 15
	    WHEN id >= 20 THEN duration + 20
		ELSE duration
	END
WHERE 
	synopsis IS NULL;

-- Increase the production's duration for productions with no synopsis and the following ids (productions_info table):
-- ⦁	If the id is less than 15 - increase the productions' duration by 15 minutes.
-- ⦁	If the id is equal to or greater than 20 - increase the productions' duration by 20 minutes.
-- ⦁	Otherwise, do not change it.

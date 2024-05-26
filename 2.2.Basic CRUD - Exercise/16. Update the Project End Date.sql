UPDATE projects
	SET end_date = start_date + INTERVAL '5 MONTHS'
	WHERE end_date is NULL;


-- Retrieve all projects without an "end_date", and add 5 months to their "start_date".
-- *** Note, you have the option to utilize the commutative pairs 
-- 	"+ INTERVAL" to increase the "start_date" by 5 months and determine the date after this duration.
-- Submit your query for this task in the Judge system.

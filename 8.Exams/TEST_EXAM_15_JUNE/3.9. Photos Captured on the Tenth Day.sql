SELECT
	CONCAT(LEFT(description, 10), '...') AS summary,
	TO_CHAR(capture_date, 'DD.MM HH24:MI') AS date
FROM
	photos
WHERE 
	EXTRACT(DAY FROM capture_date) = 10
ORDER BY
	capture_date DESC

-- Extract photos from the database only if their capture day is the 10th day of the month.
-- Summarize their description:
-- ⦁	The summary must be up to 10 symbols long. Append an ellipsis ( "..." ) at the end.
-- Return the capture date in the format 'DD.MM HH24:MI' as date.
-- Order the results by capture_date in descending order.
-- Required Columns
-- ⦁	summary
-- ⦁	date

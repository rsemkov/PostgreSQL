SELECT
	first_name,
	last_name,
    EXTRACT('year' FROM born) as year
	-- DATE_PART('year', born) as year
FROM authors

-- Write a query to get the year of birth for each author. Your query should return:
-- first_name – the first name of each author
-- last_name – the last name of each author
-- year – the year of birth of each author



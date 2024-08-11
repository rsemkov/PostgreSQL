CREATE OR REPLACE FUNCTION fn_cash_in_users_games(game_name VARCHAR(50))
RETURNS TABLE(total_cash NUMERIC) AS

$$
BEGIN

    RETURN 
        QUERY
    SELECT
        ROUND(SUM(cash), 2)
    FROM (
        SELECT
            ug.cash,
            ROW_NUMBER() OVER (ORDER BY cash DESC) AS row_num
        FROM
            users_games AS ug
        LEFT JOIN
            games AS g ON g.id = ug.game_id
        WHERE
            g.name = game_name
    ) AS subquery
    WHERE
        subquery.row_num % 2 = 1; 

END;
$$
	
LANGUAGE plpgsql;

-- Write a PostgreSQL function named "fn_cash_in_users_games" that takes a parameter "game_name" of type VARCHAR(50). 
-- The function should return a table with one column named "total_cash" of type NUMERIC.
-- The function should calculate the total cash of the odd rows of the "users_games" table that belong 
-- to the game specified by the "game_name" parameter. Rows should be ordered by "cash" in descending order.
-- The function should then round the result to two decimal places.

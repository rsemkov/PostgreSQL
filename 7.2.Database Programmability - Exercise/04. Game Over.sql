CREATE OR REPLACE FUNCTION fn_is_game_over(is_game_over BOOLEAN)

RETURNS TABLE(
	name VARCHAR(50),
	game_type_id INT, 
	is_finished BOOLEAN
	) AS 
$$

BEGIN

	RETURN 
		QUERY
	SELECT
		g.name,
		g.game_type_id, 
		g.is_finished 
	FROM
		games AS g
	WHERE
		is_game_over = g.is_finished;
	
END;
$$
	
LANGUAGE plpgsql;

-- Your task is to write a function called "fn_is_game_over" which takes one parameter: "is_game_over", a 
-- BOOLEAN value indicating whether the game is over or not.
-- The function should return a table with three columns: "name" of the game (VARCHAR(50)), "game_type_id" (INT), 
-- and "is_finished" (BOOLEAN);
-- The function should retrieve all the rows from the "games" table where the "is_finished" column matches the 
-- "is_game_over" parameter. 

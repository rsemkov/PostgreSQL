CREATE OR REPLACE FUNCTION fn_difficulty_level(level INTEGER)

RETURNS VARCHAR AS

$$
DECLARE
    difficulty_level TEXT;
	
BEGIN
    difficulty_level := CASE 
        WHEN level <= 40 THEN 'Normal Difficulty'
        WHEN level BETWEEN 41 AND 60 THEN 'Nightmare Difficulty'
        ELSE 'Hell Difficulty'
    END;
    RETURN difficulty_level;
END;
	
$$
	
LANGUAGE plpgsql;


SELECT
	user_id, 
	level, 
	cash,
	fn_difficulty_level(level)
FROM
	users_games
ORDER BY
	user_id ASC;

-- Write a PostgreSQL function that accepts a "level" parameter and returns the corresponding "difficulty_level" 
-- based on the following criteria:
-- if "level" is less than or equal to 40, the "difficulty_level" is "Normal Difficulty";
-- if "level" is between 41 and 60 (inclusive), the "difficulty_level" is "Nightmare Difficulty";
-- if "level" is greater than 60, the "difficulty_level" is "Hell Difficulty".

-- Next, write a SQL query that retrieves the "user_id", "level", "cash", and "difficulty_level" 
-- of all users in the "users_games" table. Use the "fn_difficulty_level()" function to calculate the difficulty 
-- level for each user. Sort the result by "user_id" in ascending order.

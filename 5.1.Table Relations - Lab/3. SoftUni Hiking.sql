SELECT 
	start_point,
	end_point,
	leader_id,
	CONCAT(c.first_name, ' ', c.last_name) AS leader_name
FROM routes as r
	JOIN campers as c
	ON c.id = r.leader_id
	
-- Get information about the hiking routes (start_point and end_point) 
-- and their leaders (leader_name and leader_id).

SELECT 
	c.id as driver_id,
	v.vehicle_type,
	CONCAT(c.first_name, ' ', c.last_name) AS driver_name
FROM campers as c
	JOIN vehicles as v
		ON c.id = v.driver_id

-- Write a query to retrieve information about SoftUni camp's transportation organization. 
-- Get information about people who are drivers (driver_name and driver_id) 
-- and their vehicle type. The driver’s name field represents the full name of a driver.

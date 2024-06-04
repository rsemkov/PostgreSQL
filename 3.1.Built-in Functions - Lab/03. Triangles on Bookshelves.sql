SELECT
	id,
	(side * height)/2 as area
FROM triangles
ORDER BY id

-- Write a query to calculate the area of triangles with a given side and height from table triangles.
-- Display the resulting table with columns id and area. Order by id.
-- formula: side x height x 0.5


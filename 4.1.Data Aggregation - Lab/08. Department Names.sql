SELECT
	id,
	first_name,
	last_name,
	salary,
	department_id,
	CASE
		WHEN department_id = 1 THEN 'Management'
		WHEN department_id = 2 THEN 'Kitchen Staff'
		WHEN department_id = 3 THEN 'Service Staff'
		ELSE 'Other'
	END department_name
FROM 
	employees

-- 1 – "Management"
-- 2 – "Kitchen Staff"
-- 3 – "Service Staff"
-- any other number – "Other"

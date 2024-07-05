SELECT count(employee_id)
FROM employees
WHERE salary > (SELECT avg(salary) FROM employees)

-- Write a query to count the number of employees who receive salaries higher than the average. 
-- Submit your queries in the Judge system.

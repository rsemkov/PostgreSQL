SELECT id, CONCAT_WS(' ', first_name, last_name) AS "Full Name", job_title as "Job Title"
FROM employees;

-- SELECT id, first_name || ' ' || last_name AS "Full Name", job_title as "Job Title"
-- FROM employees;


-- select all employees and retrieve information 
-- about their id,  first_name, last_name (as Full Name), and job_title (as Job Title).

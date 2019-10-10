-- Question 1
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.gender,
	s.salary
FROM employees e 
JOIN salary s ON e.emp_no = s.emp_no;

-- Question 2
SELECT 
	emp_no,
	last_name,
	first_name
FROM employees 
WHERE EXTRACT (year FROM hire_date) = 1986;

-- Question 3 
SELECT
	d.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name,
	e.hire_date,
	dm.from_date AS manager_start_date,
	dm.to_date AS manager_end_date
FROM departments d
JOIN department_managers dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;

--Question 4 
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees e
JOIN department_employees de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no;

--Question 5 
SELECT 
	e.first_name,
	e.last_name
FROM employees e 
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%';

--Question 6 
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees e
JOIN department_employees de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

--Question 7 
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees e
JOIN department_employees de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name IN ('Sales','Development');

--Question 8 
SELECT 
	e.last_name,
	COUNT(*)
FROM employees e 
GROUP BY e.last_name
ORDER BY e.last_name DESC;

	

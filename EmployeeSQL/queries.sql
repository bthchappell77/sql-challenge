--question 1
SELECT e.emp_no, last_name, first_name, gender FROM employees AS e
	INNER JOIN salaries AS s ON e.emp_no = s.emp_no;
	
--question 2
SELECT e.emp_no, last_name, first_name FROM employees AS e
	WHERE DATE_PART('year', hire_date) = 1986;

--question 3
SELECT d.dept_name, d.dept_no, m.emp_no, e.last_name, e.first_name, e.hire_date, s.to_date 
	FROM departments AS d
	INNER JOIN dept_manager AS m ON d.dept_no = m.dept_no
	INNER JOIN employees AS e on m.emp_no = e.emp_no
	INNER JOIN salaries AS s on e.emp_no = s.emp_no;
	
--question 4
SELECT e.emp_no, e.first_name, e.last_name, x.dept_name 
	FROM employees AS e
	INNER JOIN dept_manager AS d ON d.emp_no = e.emp_no
	INNER JOIN departments AS x ON x.dept_no = d.dept_no;
	
--question 5
SELECT * FROM employees 
WHERE first_name = 'Hercules' AND last_name like 'B%';

--question 6
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
	FROM employees AS e
	INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
	INNER JOIN departments AS d ON d.dept_no = de.dept_no
	WHERE d.dept_name = 'Sales';
	

--question 7
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
	FROM employees AS e
	INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
	INNER JOIN departments AS d ON d.dept_no = de.dept_no
	WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
	
--question 8
SELECT last_name, COUNT(*) FROM employees As e
	GROUP BY last_name
	ORDER BY last_name DESC;
	

SELECT emp_no, salary FROM salaries WHERE emp_no = 499942;
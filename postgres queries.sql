

#Queries
#1
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary FROM employees AS e 
INNER JOIN salaries as s ON e.emp_no = s.emp_no ; 
#2
SELECT * FROM employees where hire_date >= '1/1/1986' AND hire_date <= '12/31/1986';

#3
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM employees AS e
INNER JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = dm.dept_no;

#4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no;

#5
SELECT * FROM employees WHERE first_name = 'Hercules' AND last_name like 'B%';

#6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d on d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

#7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d on d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

# bonus

SELECT t.title, ROUND(AVG(e.salary)) FROM salaries AS e 
INNER JOIN titles AS t on t.emp_no = e.emp_no
GROUP BY t.title;

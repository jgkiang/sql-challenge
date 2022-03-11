--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
JOIN Salaries ON Employees.emp_no = Salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT Employees.first_name, Employees.last_name, Employees.hire_date
FROM Employees
WHERE Employees.hire_date LIKE '%1986';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT Dept_Managers.dept_no, Departments.dept_name, Dept_Managers.emp_no, Employees.last_name, Employees.first_name
FROM Dept_Managers
JOIN Departments ON Dept_Managers.dept_no = Departments.dept_no
JOIN Employees ON Dept_Managers.emp_no = Employees.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
JOIN Dept_Employees ON Employees.emp_no = Dept_Employees.emp_no
JOIN Departments ON Dept_Employees.dept_no = Departments.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM Employees
WHERE fist_name = 'Hercules' and last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
JOIN Dept_Employees ON Employees.emp_no = Dept_Employees.emp_no
JOIN Departments ON Dept_Employees.dept_no = Departments.dept_no
WHERE Departments.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
JOIN Dept_Employees ON Employees.emp_no = Dept_Employees.emp_no
JOIN Departments ON Dept_Employees.dept_no = Departments.dept_no
WHERE Departments.dept_name = 'Sales' AND Departments.dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;
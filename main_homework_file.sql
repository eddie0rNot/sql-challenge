-- List the following details of each employee: 
--   employee number, last name, first name, sex, and salary
SELECT employees.emp_no,
  employees.last_name,
  employees.first_name,
  employees.sex,
  salaries.salary
FROM employee_db.employees
INNER JOIN employee_db.salaries ON
employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986
SELECT employees.last_name,
  employees.first_name,
  employees.hire_date
  FROM employee_db.employees
  WHERE
  employees.hire_date >= '1/01/1986'
  AND employees.hire_date <  '1/01/1987'
  ORDER BY employees.hire_date ASC;

-- List the manager of each department with the following information: 
--   department number, department name, the manager's employee number, last name, first name
SELECT 
  departments.dept_name,
  dept_manager.dept_no,
  employees.emp_no,
  employees.last_name,
  employees.first_name
FROM employee_db.departments
JOIN employee_db.dept_manager ON
departments.dept_no = dept_manager.dept_no
JOIN employee_db.employees ON
employees.emp_no = dept_manager.emp_no;

-- List the department of each employee with the following information: 
--   employee number, last name, first name, and department name


-- List first name, last name, and sex for employees whose first name is:
--   "Hercules" and last names begin with "B."


-- List all employees in the Sales department, including their: 
--   employee number, last name, first name, and department name


-- List all employees in the Sales and Development departments, including their:
--   employee number, last name, first name, and department name


-- In descending order, list the frequency count of:
--   employee last names, i.e., how many employees share each last name
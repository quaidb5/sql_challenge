-- finding List the following details of each employee: employee number, 
-- last name, first name, gender, and salary.
select distinct (employees.emp_no), 
	employees.last_name,
	employees.first_name, 
	employees.gender,
	salaries.salary
from employees
	inner join salaries
	on employees.emp_no =
	salaries.emp_no;
	
-- List employees who were hired in 1986.
select hire_date
from employees
where hire_date like '%1986%';

-- List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name, and start and end employment dates.
select distinct (dept_manager.emp_no), 
	employees.last_name,
	employees.first_name,
	dept_manager.from_date,
	dept_manager.to_date
from dept_manager
	inner join employees
	on dept_manager.emp_no =
	employees.emp_no;
	
-- List the department of each employee with the following information: employee number, last name, 
-- first name, and department name.
select dept_employee.dept_no, 
	dept_employee.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
from dept_employee
	inner join employees
	on dept_employee.emp_no =
	employees.emp_no
	inner join departments
	on departments.dept_no = 
	dept_employee.dept_no;
	
-- List all employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name
from employees
where first_name = 'Hercules' and last_name like 'B%'

-- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.
select employees.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
from dept_employee
	inner join employees
	on dept_employee.emp_no =
	employees.emp_no
	inner join departments
	on departments.dept_no = 
	dept_employee.dept_no
	where departments.dept_name = 'Sales'
	
-- List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
select employees.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
from dept_employee
	inner join employees
	on dept_employee.emp_no =
	employees.emp_no
	inner join departments
	on departments.dept_no = 
	dept_employee.dept_no
	where departments.dept_name = 'Sales' or dept_name = 'Development'
	
-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)AS Frequency
  FROM employees
  GROUP BY last_name
  ORDER BY COUNT(last_name) DESC
	
	

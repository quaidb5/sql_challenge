--create tables for import

CREATE TABLE departments (
  dept_no character varying(10) NOT NULL,
  dept_name character varying(45) NOT NULL,
  primary key(dept_no)
);
  
CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL,
  from_date character varying(45) NOT NULL,
  to_date character varying(45) NOT NULL,
  foreign key (emp_no)
  reference employees(emp_no)
);

CREATE TABLE titles (
  emp_no integer NOT NULL,
  title character varying(60) NOT NULL,
  from_date character varying(45) NOT NULL,
  to_date character varying(45) NOT NULL,
  foreign key (emp_no)
  reference employees(emp_no)
);

CREATE TABLE dept_employee (
  emp_no integer NOT NULL,
  dept_no character varying(10) NOT NULL,
  from_date character varying(45) NOT NULL,
  to_date character varying(45) NOT NULL,
  foreign key (emp_no)
  reference employees(emp_no),
  foreign key (dept_no)
  reference departments(dept_no)
);

CREATE TABLE dept_manager (
  dept_no character varying(10) NOT NULL,
  emp_no integer NOT NULL,
  from_date character varying(45) NOT NULL,
  to_date character varying(45) NOT NULL,
  foreign key (emp_no)
  reference employees(emp_no),
  foreign key (dept_no)
  reference departments(dept_no)
);

CREATE TABLE employees (
  emp_no integer NOT NULL,
  birth_date character varying(45) NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  gender character varying(2) NOT NULL,
  hire_date character varying(20) NOT NULL,
  primary key(emp_no)
);
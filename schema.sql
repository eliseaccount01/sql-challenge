DROP TABLE IF EXISTS department_managers;
DROP TABLE IF EXISTS department_employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salary;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE employees(
	emp_no iNT PRIMARY KEY,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

CREATE TABLE titles(
	emp_no INT REFERENCES employees(emp_no),
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE
);

CREATE TABLE salary(
	emp_no INT REFERENCES employees (emp_no),
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE
);

CREATE TABLE department_managers(
	dept_no VARCHAR NOT NULL REFERENCES departments (dept_no),
	emp_no INT NOT NULL REFERENCES employees (emp_no),
	from_date DATE NOT NULL,
	to_date DATE
);

CREATE TABLE department_employees(
	emp_no INT NOT NULL REFERENCES employees (emp_no),
	dept_no VARCHAR NOT NULL REFERENCES departments (dept_no),
	from_date DATE NOT NULL,
	to_date DATE
);

--Create tables
Create table titles(
	title_id VARCHAR Primary Key,
	title VARCHAR
);

Create table employees(
	emp_no INT Primary Key,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)

);

Create Table departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

Create Table dept_manager(
	dept_no VARCHAR,
	emp_no INT,
	Foreign Key (emp_no) REFERENCES employees (emp_no),
	Foreign Key (dept_no) REFERENCES departments (dept_no),
	Primary Key (dept_no, emp_no)
);

Create Table dept_emp(
	emp_no INT,
	dept_no VARCHAR,
	Foreign Key (emp_no) REFERENCES employees (emp_no),
	Foreign Key (dept_no) REFERENCES departments (dept_no),
	Primary Key (emp_no, dept_no)
);

Create Table salaries(
	emp_no INT Primary Key,
	salary INT,
	Foreign Key (emp_no) References employees (emp_no)
);


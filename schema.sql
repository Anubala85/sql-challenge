DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(255) NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title VARCHAR(5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(20) NOT NULL, 
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(1),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	CONSTRAINT "employees_emp_title" FOREIGN KEY (emp_title) REFERENCES titles (title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	CONSTRAINT "dept_emp_emp_no" FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	CONSTRAINT "dept_emp_dept_no" FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	CONSTRAINT "dept_manager_emp_no" FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	CONSTRAINT "dept_manager_dept_no" FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT,
	PRIMARY KEY (emp_no, salary),
	CONSTRAINT "salaries_emp_no" FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
	

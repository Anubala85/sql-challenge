# Sql-challenge

**schema.sql**
- Created six tables with primary keys and foreign keys in the appropriate order to account for dependencies
    - Titles
    - Employees
    - Departments
    - Dept_Emp
    - Dept_Manager
    - Salaries
- Appropriate data types with char limits have been identified
- Composite keys were created for Dept_Emp, Dept_Manager and Salaries table to identify unique records
- Data import functionality was used to import CSV files after table creation

**ERD.png**
- Used "QuickDBD" tool to generate ERD diagram
- Appropriate relationships (one to many, many to many, one to one) were identified
- Primary keys, Foreign keys were identified

 **data_analysis.sql**
 - Completed the data analysis by running SQL queries utilizing "Inner Joins" and "Where" functionalities for the following questions:
    1. List the employee number, last name, first name, sex, and salary of each employee.
    2. List the first name, last name, and hire date for the employees who were hired in 1986.
    3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
    4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
    5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
    6. List each employee in the Sales department, including their employee number, last name, and first name.
    7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
    8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

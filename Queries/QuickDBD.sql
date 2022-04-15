departments
-
dept_no varchar pk
dept_name varchar

employees
-
emp_no pk FK >- Dept_Emp.emp_no
birth_date date
first_name varchar
last_name varchar
gender varchar
hire_date date
 
managers
-
dept_no varchar pk fk - Departments.dept_no
emp_no int pk fk -< Employees.emp_no
from_date date
to_date date

salaries
-
emp_no int pk fk - Employees.emp_no
salary int
from_date date
to_date date

dept_emp
-
dept_no varchar pk fk -< Departments.dept_no
emp_no int pk FK - Salaries.emp_no
from_date date
to_date date

titles
-
emp_no int pk FK - Salaries.emp_no
title varchar pk
from_date date pk
to_date date

current_emp
-
emp_no
first_name varchar
last_name varchar
to_date date

dept_info
-
emp_no
first_name varchar
las_name varchar
dept_name varchar

dept_manager
-
dept_no
emp_no
from_date date
to_date date
 
emp_info
-
emp_no
first_name varchar
last_name varchar
gender varchar
salary int
to_date date
 
sales_dev_team
-
emp_no int
first_name varchar
last_name varchar
dept_name varchar

sales_team
-
emp_no int
first_name varchar
last_name varchar
dept_name varchar
































-- Create a table based on Retirement Employees Titles
Select e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
Into retirement_titles
From employees As e
Join titles As t
On e.emp_no = t.emp_no
Where (birth_date Between '1922-01-01' And '1955-12-31')
Order By e.emp_no 

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- count the number of employees by title who are about to retire
Select count(emp_no) as "count", title
Into retiring_titles
From unique_titles
Group By title
Order By "count" DESC

-- creating Mentorship Eligibility table
Select Distinct On (e.emp_no) e.emp_no, 
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   d.from_date,
	   d.to_date,
	   t.title
Into mentorship_eligibility
From employees as e
inner join dept_emp as d
on e.emp_no = d.emp_no
inner join titles as t
on e.emp_no = t.emp_no 
Where d.to_date ='9999-01-01' And
e.birth_date Between '1965-01-01' And '1965-12-31'
Order by emp_no, emp_no 
# Pewlett-Hackard-Analysis

## Overview of Pewlett-Hackard-Analysis
### Purpose of the analysis

In the previous module we have already imported 6 csv files in the database and we had created some tables such as dept_info, and emp_info.

The purpose of the analysis is that we are going to determine the number of retiring employees per title and identify who are eligible to participate in a mentorship program.

First, we used Join function to combined titles and employees’ tables to get the retirement employees, and then we used Distinct On with orderby to remove duplicate rows. After that we used groupby and count function to generate the number of the employees about to retire by title. At the end of analysis, we will find out how many roles will need to be filled as the "silver tsunami" and if there are enough qualified employees in the departments to mentor the next generation.

## Result

There are four major points from the two analyses:

- There are only 2 individual with manager title had the least amount for retiring employee

![retiring_titles](https://user-images.githubusercontent.com/100378319/163607633-9718ab5a-28f2-40d0-b646-2a57c90bcbe9.png)


- There are 72458 employees who is retiring with birth_date between 1952-01-01 to 1955-01-01. However they are not all in senior role, some of them are only Staff and Engineer title

![sum_of_retiring_titles](https://user-images.githubusercontent.com/100378319/163607686-83decedb-4b8e-453e-819c-fa0e5957ebd9.png)


- There are only 1549 from mentorship eligibility table whose is retirement-ready employees

![original_mentorship_eligilibility](https://user-images.githubusercontent.com/100378319/163607691-62309741-644e-4ccb-966b-2567f59ce915.png)


- We need to update info for Titles table because it is out-of-date. 
For example, for the mentorship_eligibility table even there are emp_no, from_date, and to_date in title, we still cannot use only these two tables (employees + titles) for the inner join because the from_date is not up-to-date in titles table. We need to use the most updated from_date from dept_emp table to have the correct result, therefore we used 3 tables.

# Summary

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

There are 72458 roles need to be filled. The result is from the total of unique_titles which contains the employees whose birthday is between 1922-01-01 and 1955-12-31 and currently working now. 

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

There are only 1549 from mentorship eligibility table whose is retirement-ready employees. Even not all of the 72458 are manger or senior position but 1549 is still not enough to mentor the next generation of Pewlett Hackard employees

Additional queries or tables:

1. The first table, retirement_titles, quires can be amended for a earlier birth_date because the some employees may retire earlier in 60 to 65 vs current 67 to 70 years old. It may generate a higher number of "silver tsunmi" employees and we will affect our result for mentorship_eligibility.

2. I have amended the table for mentorship_eligibility to have birth_date between 1961 to 1972 which is 50 to 61 years old. There are 75319 roles in this area so there are enough qualified employees in department to mentor the next generation. Even though they are not retirement-ready employees however we can decide who is eligible for the program based on their knowledge and senority after obtaining this list. Considering company’s budget so we try not over exceeding qualified mentorship employees with silver tsunmi.

The amended code is below for the new table:

![new_code](https://user-images.githubusercontent.com/100378319/163608037-c4736f97-cbac-4d4d-ab36-4828aa4b2913.png)

Output:

![eligibility_amended_count](https://user-images.githubusercontent.com/100378319/163607715-22fcccf7-2e44-4650-b336-930ea7e42212.png)

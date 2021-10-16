-- Challenge Part 1

-- Retrieve data from the emplowee table
select e.emp_no,
	e.first_name,
	e.last_name,
	tt.title,
	tt.from_date,
	tt.to_date
into Retirement_Titles
from employees as e
	inner join titles as tt
		ON (e.emp_no = tt.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

select * from retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles AS rt
ORDER BY emp_no ASC, to_date DESC;

--Create retiring_titles table 

SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;


--Challenge Part 2
SELECT DISTINCT ON(e.emp_no)e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
--DISTINCT ON(emp_no)
--INTO mentor_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1962-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;
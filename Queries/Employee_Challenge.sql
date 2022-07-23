-- Use Dictinct with Orderby to remove duplicate rows
SELECT 	 titles.emp_no,
     titles.from_date,
     titles.to_date,
     titles.title,
	 employees.last_name,
	 employees.first_name,
	 employees.birth_date
INTO new_table1
FROM titles
RIGHT JOIN employees
ON employees.emp_no = titles.emp_no;

select * from new_table1
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER By emp_no

select emp_no, first_name, last_name, title, from_date, to_date
INTO retirement_titles
from new_table1
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER By emp_no

select * from retirement_titles
where to_date = '9999-01-01'


SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY  emp_no,from_date;

select* from unique_titles

SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
group by title
order by count DESC

select * from retiring_titles

select 
	emp_no, first_name, last_name, birth_date
into d3_employee
from employees

select 
	emp_no, from_date, to_date
into d3_emp
from dept_emp

SELECT DISTINCT ON (emp_no) emp_no, title
INTO d3_title
FROM titles
ORDER BY  emp_no,title;

select * from d3_title

SELECT d3_title.emp_no, 
	 d3_title.title
FROM d3_title
RIGHT JOIN d3_employee
ON d3_employee.emp_no = d3_title.emp_no;

SELECT d3_title.emp_no, 
	 d3_employee.first_name,
	 d3_employee.last_name,
	 d3_employee.birth_date,
 	 d3_title.title
into d3_temp
FROM d3_title
right JOIN d3_employee
ON d3_employee.emp_no = d3_title.emp_no;

select * from d3_temp

SELECT d3_temp.emp_no, 
	 d3_temp.first_name,
	 d3_temp.last_name,
	 d3_temp.birth_date,
 	 d3_temp.title,
	 d3_emp.from_date,
	 d3_emp.to_date
into mentorship_source
FROM d3_temp
right JOIN d3_emp
ON d3_temp.emp_no = d3_emp.emp_no;

select * 
into mentorship_eligiblity
from mentorship_source
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by emp_no

select * from mentorship_eligiblity

--list the employee number, last name, first name, sex and salary of each employee
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
left join salaries as s
on (e.emp_no = s.emp_no)
order by e.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986

select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date;

--List the manager of each department along with their dept number, dept name, employee number, last name, and first name. 
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
inner join departments as d
on (dm.dept_no = d.dept_no)
inner join employees as e
on (dm.emp_no = e.emp_no);

--List the department number for each employee along with that employee's emp number, last name, first name, and dept name
select  e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no)
order by e.emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with B
select first_name, last_name, birth_date, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

--List each employee in the Sales department including their emp number, last name and first name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales'
order by e.emp_no;

--List each employee in the Sales and Development departments, including their employee number, last name, first name and dept name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales' or d.dept_name = 'Development'
order by e.emp_no;

--List the frequency counts, in descending order of all the employee last names 
select last_name, count(last_name) as "Last Name Count"
from employees
group by last_name
order by "Last Name Count" Desc;






-- List the following details of each employee: employee number, last name, first name, sex, and salary

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
left join salaries s
on e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986

select first_name, last_name, hire_date
from employees
where hire_date between '1986/1/1' and '1986/12/31';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select d.dept_no, d.dept_name,m.emp_no,e.last_name,e.first_name
from departments d
left join dept_manager m
on d.dept_no = m.dept_no
left join employees e
on m.emp_no = e.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
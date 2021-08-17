create table departments(
	dept_no varchar primary key not null,
	dept_name varchar not null
);

select * from departments;

create table titles(
	title_id varchar primary key not null,
	title varchar not null
);

select * from titles;

create table employees(
	emp_no int primary key not null,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	foreign key (emp_title_id) references titles(title_id)
);

select * from employees;

create table dept_emp(
	emp_no int,
	dept_no varchar,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

select * from dept_emp;

create table dept_manager(
	dept_no varchar,
	emp_no int,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

select * from dept_manager;

create table salaries(
	emp_no int,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);

select * from salaries;




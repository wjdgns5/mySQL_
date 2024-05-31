
use employees;
show tables;

select * from departments;
desc departments;

-- limit 하면 employess 테이블의 10개 를 출력한다.
select * from employees limit 10;

select * from dept_emp;
select * from employees;
select * from departments where dept_no = 'd005';
select * from salaries where emp_no = 10001;

select distinct * from employees;



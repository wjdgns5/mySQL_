
use mydb;

use employees;

-- employees
-- 의미 있는 결과 집합을 만들자 (크로스 조인 사용 X)
-- 단, INNER JOIN, LEFT JOIN, RIGHT JOIN 사용해 쿼리문 만들기 2개 만들어 보기


-- dept_emp 테이블의 외래키 employees, 외래키 departments
-- Foreign Keys 테이블의 외래키 employees, 외래키 departments

select * from dept_emp; -- emp_no dept_no from_date, to_date
desc dept_emp;

select * from dept_manager; -- emp_no dept_no from_date, to_date
desc dept_manager;

select * from employees; -- emp_no birth_date first_name last_name gender hire_date
desc employees;

select * from departments; -- dept_no dept_name
desc dapartments;

desc titles;

-- --------------------------------------------------------------
-- 문제1 dept_emp 테이블에서 emp_no 속성이 110000 이상인 데이터를 출력
select *
from dept_emp
where emp_no > 110000;

-- 문제 2 dept_emp 테이블 dept_manager테이블의 dept_no가 같도록 데이터를 출력
select *
from dept_manager as m
left join dept_emp as e
on m.dept_no = e.dept_no;


-- 문제3 dept_emp 테이블과 dept_manager테이블의 from_date 속성만 출력
select e.from_date
from dept_emp as e
join dept_manager as m
on e.from_date = m.from_date;

-- 문제4 dept_emp 테이블과 dept_manager테이블의 from_date를 출력
select e.from_date, m.from_date
from dept_emp as e
join dept_manager as m
on e.from_date = m.from_date









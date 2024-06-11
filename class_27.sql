
use mydb2;

select *
from employee; 

desc employee;

insert into employee values (6, '홍길동', 'IT', '4000000.00', now());

select *
from employee; 

Update employee
set department = '기획부'
where name = '이순신';

delete from employee
where name = '조OO';

select * from employee;
desc employee;

-- 문제
use b_demo1;

select *
from employees;
desc employees;

select *
from tb_departments;
desc tb_departments;

 -- 문제1. employees 테이블과 tb_departments 테이블을 id로 조인하여 employee_id 속성, employee_name 속성,  tb_departments 테이블의 속성을 모두 출력해라.
 use b_demo1;
 
select e.employee_id, e.employee_name, t.*
from employees as e
left join tb_departments as t
on e.employee_id = t.부서ID;

-- 문제1.  employee 테이블에서 근로기간이 1년 이상인 직원에게는 '월급인상 대상' 아니면 '해당없음'을 출력해라.
-- 출력예시 name, hire_date, 근로기간, 월급인상여부 
use mydb2;

select name, hire_date, ( year(current_date) - year(hire_date)) as '근로기간',
case 
when ( year(current_date) - year(hire_date)) >= 1
then "월급인상 대상"
else "해당없음"
end as '월급인상 여부'
from employee;
-- 문제 만들기----------------------------
use employees;

select * from departments; -- 부서
desc departments;

select * from dept_emp; -- 부서_고용
desc dept_emp;

select * from dept_manager;
desc dept_manager;

-- 
select *, count(d.dept_name) as 부서별인원
from departments as d
left join dept_manager as m
on d.dept_no = m.dept_no
group by dept_name;

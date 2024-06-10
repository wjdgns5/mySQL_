
use mydb3;

-- order by(asc, desc) 와 limit 그리고 offset
-- 오름차순 asc , 내림차순 desc
select id, name, class, score
from tb_student
where score > 80
order by score desc;

-- order by(asc, desc) 와 limit 그리고 offset
-- 오름차순 asc, 내림차순 desc
-- 출력 3개
select id, name, class, score
from tb_student
where score > 80
order by score desc
limit 3;

-- offset 에 이해 limit(3, 1) 두번째가 limit가 된다.
-- limit(3, 0) 앞에가 offset --> 시작의 위치 0 부터 시작 가능
select id, name, class, score
from tb_student
limit 6, 3; -- 7번째부터부터 출력이 되고 3개만 보여줘 라는 의미 !!! limit(여기 까지 출력안함, 출력개수) 이런 느낌

-- -----------------------------------

use employees;

-- 페이지 처리하는 방법 - ex) 1페이지 10개 출력
select *
from employees
limit 10;

-- 페이지 처리하는 방법 - ex) 2페이지 10개 출력
select *
from employees
limit 10,10;

-- 페이지 처리하는 방법 - ex) 3페이지 10개 출력
select *
from employees
limit 20, 10;

-- 페이지 처리하는 방법 - ex) 4페이지 10개 출력 --> 이런식으로 나타낼수 있다.
select *
from employees
limit 30, 10;

-- ------------------------------------------------------------

-- 문제 
use employees;
select * from employees;
select * from dept_emp;

-- 문제 1 employees 테이블에서 first_name, last_name, hire_date를 출력하고 hire_date를 내림차순으로 9번부터 시작해서 15개를 출력해라
use employees;

select first_name as 성, last_name as 이름, hire_date
from employees
order by hire_date desc
limit 8, 15;

-- 문제 만들기 1
use mydb2;

select *
from employee;

-- 문제 만들기 1 employee 테이블에서 name, department, salary를 출력하고 salary가 3300000이상인 값을 출력하라
use mydb2;

select name as 이름, department as 부서, salary as 월급
from employee
group by department
having salary >= 3300000
limit 2;

-- 문제 2
use employees;

desc employees;
desc dept_emp;

-- 문제 2 employees 테이블과 dept_no 테이블에서 employees.emp_no, employees.hire_date ,dept_no.emp_no, dept_no.from_date를 출력하고
-- 
use employees;

select e.emp_no, e.hire_date ,d.emp_no, d.from_date
from employees as e
left join dept_emp as d
on e.emp_no = d.emp_no
order by e.emp_no desc
limit 10,10;


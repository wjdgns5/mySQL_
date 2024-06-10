
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
on e.from_date = m.from_date;

-- 문제 dept_emp 테이블과 dept_manager테이블에서 dept_no 속성값 d001를 가진 데이터를 출력
select m.dept_no, m.to_date, e.dept_no, e.to_date
from dept_manager as m
left join dept_emp as e
on m.dept_no = e.dept_no
where m.dept_no = "d001" and e.dept_no = "d001";

-- ------------------------------------------------------------------

-- 1조 문제 
-- 전직원 2000년도의 연봉을 출력하세요(출력 예시 :  id , firstname, lastname,slalary)
-- 'd004'  부서의 남자직원의 이름을 출력하세요 (출력예시 : firstname , M , 'd004' )

-- 2조 문제
-- 각 직원의 정보를 확인하기 (직원번호, 생년월일, 이름, 성,부서번호, 부서명, 직업명)
-- 1990년 이상 입사자 이름과 급여 부서 직책

-- 3조 문제
-- dept_emp 와 employees 테이블 에 모든 데이터를  emp_no를 기준으로 조인하여 조회
-- 단(employees의 birth_date가 '05'를 포함하고,성별은 '남성'일 경우)
-- 모든 마케팅 부서 직원의 이름을 조회

-- 4조 문제 
-- 아직 재직중인 사람의 이름과 성 직급 입사일자를 출력해 보자.
-- 부서 매니저들의 평균 연봉을 추출해 보자.

-- 5조 문제 
-- 문제1.  
-- 부서 매니저의 연봉이 100,000 달러 이상인 사람 확인하시오 (출력예시 : 사원번호,입사날짜,연봉) 
-- 문제2. 
-- 8월 15일에 고용한 직원들에게 태극기를 지급하기로 했다. 사원 번호, 고용 날짜와 last_name을 조회하시오

 
-- 6조 문제 
-- 문제 1. 현재  재직중인 사람중 입사일이 1991-10-10 인 사람의 부서를 찾아주세요
-- 문제 2. 시니어 엔지니어의 월급중 6만달러가 넘는 사람이 몇명인지 찾아주세요.









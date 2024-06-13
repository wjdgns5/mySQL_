
use employees;

select *
from employees;

select *
from dept_manager;

select *
from dept_manager -- 매니저들이 
where to_date = '9999-01-01'; -- 현재 종사하고 있다는 뜻

-- 시나리오 쿼리 1 - employees 테이블에서 manager 직원만 출력 하시오.
-- 직원 테이블에서 매니저인 사원을 출력 하자. !!
select *
from employees
-- 중첩 서브쿼리 (Nested Subquery)
where emp_no in (select emp_no
				from dept_manager
				where to_date = '9999-01-01');

-- ------------------------------------------------------

-- 시니리오 쿼리 2 - 현재 매니저들에 평균 연봉 구하기
-- From 절에 사용하는 인라인 뷰
-- 현재 다니고 있는 매니저들에 평균 연봉 구하기.
use employees;

select *
from dept_manager
where to_date = '9999-01-01';

select *
from salaries
where emp_no = 10001;

-- 한 직원의 평균 연봉, emp_no 테이블을 group by 처리
select emp_no, avg(salary) as 평균연봉
from salaries as s
group by emp_no;

-- 조건을 추가한다.
-- 여기까지 InLine(인라인)뷰의 결과이다.
select emp_no, 평균연봉
from (select emp_no, avg(salary) as 평균연봉 -- from 안에 있는 select의 emp_no, avg(salary) as 평균연봉을 맨 위에있는 Select에 사용할 수 있다.
	  from salaries as s
	  group by emp_no) as avg_salary
where emp_no = '10001';

-- 인라인뷰, 중첩 서브쿼리를 동시에 사용한다.
select emp_no, 평균연봉
from (select emp_no, avg(salary) as 평균연봉 -- from 안에 있는 select의 emp_no, avg(salary) as 평균연봉을 맨 위에있는 Select에 사용할 수 있다.
	  from salaries as s
	  group by emp_no) as avg_salary -- 인라인 뷰
where emp_no in (select emp_no 
				 from dept_manager -- 중첩 서브쿼리 
                 where to_date = '9999-01-01');

-- 23847.66 비용 발생 

-- 위와 결과 집합을 INNER JOIN 을 활용해서 만들어 보자.
-- 현재 다니고 있는 매니저들에 평균 연봉 구하기.

select *
from dept_manager as d
join salaries as s
on d.emp_no = s.emp_no;



select s.emp_no, AVG(s.salary) as '평균연봉'
from dept_manager as d
inner join salaries as s
on d.emp_no = s.emp_no and d.to_date = '9999-01-01'
group by s.emp_no;

-- ------------------------------------
-- 스칼라 서브 쿼리(Scalar Subquery) : SELECT절에 사용
select emp_no as outer_emp_no, (select agv(salary)
								from  salaries
                                where emp_no = outer_emp_no) as 평균연봉
from employees;

use employees;

select * from dept_emp;

select *, count(emp_no) as '부서별 직원수'
from dept_emp
group by dept_no;

-- 문자열 함수 문제
-- 문제3 : 모든 직원에 이름을 대문자로 변환하고, 이름 앞에 'Mr/Ms ' 를 추가하세요.

use mydb2;

select concat('Mr/Ms', name) as '이름' 
from employee;

-- 이름이 대문자인 경우에는 upper() 사용 소문자인 경우 LOWER() 사용

select concat('Mr/Ms', upper(name)) as '이름' 
from employee;

-- 문제 4: 직원 이름에서 첫 2글자만 추출 하세요.

select substring(name, 1, 2) as '이름'
from employee;

-- 문제 4 -1: 직원 이름에서 끝 2글자만 추출 하세요.

select substring(name, 2, 2) as '이름'
from employee;

-- -----------------------------

-- first_name 에 끝 3글자 까지만 결과집으로 출력 하세요.
-- GPT 물어보기 금지, 구글링으로 해결

use employees;
select * from employees;

select right(first_name, 3) as '이름'
from employees;

-- 대문자로 표현이 가능하다.

select right(upper(name), 2) as '이름'
from employees;

-- 논리 및 조건 함수 문제
-- 문제 5 : 각 직원에 대한 급여가 3백만원 이상이면
-- 'High', 'Low'라고 표시하세요.
	
    use mydb2;

	select name, salary, case when salary >= 3000000
    then 'High' else 'Low'
    end as '평가'
    from employee;

-- 날짜 및 시간 함수 문제
-- 문제 6 : 오늘 날짜를 반환하세요.

	select current_date as today;
	select '안녕 반가워' as a;

-- 문제 7 : 각 직원이 고용된 날로부터 몇 년이 지났는지 계산하세요.
	
    select * from employee;
    
    select name, hire_date,
    ( year(current_date) - year(hire_date) ) + 1 as '년차'
    from employee;
    
-- 문제 8 : 각 직원의 고용 월을 반환하세요. 
	
    select name, extract(month from hire_date) as hire_month
    from employee;
    
-- 문제 9 : 각 직원에 급여를 문자열 형태로 표시하세요. (형 변환)

	select name, cast(salary as char) as salary_text
    from employee;
    
-- 문제 10 : 문자열로 저장된 날짜 '2024-06-07'를  Date 타입으로 변환 하세요.
	
    select cast('2025-06-07' as Date) as date
    from employee;
    
-- ------------------------------------------------------------
	use mydb2;
    select * from employee;
    desc employee;
    
-- 1일 1쿼리 :
-- 문제 : name을 이름 이라고 바꾸고 이름을 2글자만 추출한다, salary를 월급 이라고 바꾸고 3500000 이하만 출력하라.
	
    select substring(name, 2,3) as '이름', salary as '월급'
    from employee
	where salary <= 3500000.00;

Insert into employee (id, name, department, salary, hire_date)
values (6, "조OO", "감사부", "3400000.00", "2024-06-07");

delete from employee where id is Null;

-- 문제 
select name, hire_date, ( year(current_date) - year(hire_date)) as '년차',
case 
when ( year(current_date) - year(hire_date)) > 2
then "월급인상 대상"
else "해당없음"
end as '월급인상 여부'
from employee;
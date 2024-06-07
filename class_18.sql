
use mydb2;
-- 샘플 데이터 
create table employee(
	id int, 
    name varchar(50), 
    department varchar(50),
    salary decimal(10, 2),
    hire_date date 
);

INSERT INTO employee (id, name, department, salary, hire_date) VALUES
(1, '김철수', '인사부', 3000000.00, '2024-03-01'),
(2, '박영희', '개발부', 4000000.00, '2024-06-15'),
(3, '이민준', '기획부', 3500000.00, '2023-01-10'),
(4, '최지아', '마케팅부', 3200000.00, '2024-05-21'),
(5, '한수연', '영업부', 2900000.00, '2021-12-30');

select * from employee;
desc employee;

/*
	DECIMAL란 데이터 타입입니다. 
    고정 소수점 수를 저장하는데 사용하는 SQL 데이터 타입입니다. 
    이 데이터 타입은 금융 계산과 같이 정확한 소수점 연산이 필수적인
    애플리케이션에서 매우 유용하며, 소수점 이하의 정확도가 중요할 때 
    주로 사용합니다. 
	형식 decimal(5,2) 
	위 형식은 총 5자리 숫자를 저장할 수 있으며, 
    이 중 2자리는 소수부(소수점) 이다. 
    즉 위 데이터 타입은 decimal(5,2) -999.99에서 999.99 까지의 범위를 가진다. 

*/

-- 복습 !!!
-- 팁~ 다른 DB에 있는 테이블에 스키마와 데이터를 복사해보자
use mydb2;
create table new_employees
as select * from employees.employees 
where emp_no < 10005;
select * from new_employees;



-- 집계 함수 문제
-- 문제 1 : 모든 직원에 평균 급여를 계산하세요.
    -- 단! 주의 avg() 평균계 합계와 다른 컬럼을 적는다면 관계가 없는 데이터 결과 집합이다.
    select avg(salary) from employee;
    select avg(salary), name, id from employee;
    
    -- 각 부서별로 직원 수를 세고, 급여의 합을 계산하세요.
    -- 부서별, 부서별직원수, 부서별급여의 합계 금액
    -- 그룹화 시켜야 된다.
    select department, count(*) as '직원수', sum(salary) as '급여'
    from employee
    group by department;
    
	select * from employee;
    
    



use employees;

-- 테이블 복사(구조만 복사)
create table dept_emp_copy
as select * from dept_emp 
where 1 = 0; -- 어떠한 데이터도 가져오지 않습니다 결과적으로 컬럼 구조만 복제된 새 테이블이 생성 (구조만 복사)

select * from dept_emp_copy;
desc dept_emp_copy;

-- 테이블 구조와 데이터 모두 복사하기
Create table employees_copy
as select * from employees;

select * from employees_copy;
select * from dept_emp;
-- delete from dept_emp_copy;

-- INSERT INTO SELECT 문 사용
insert into dept_emp_copy(emp_no, dept_no, from_date, to_date)
	select emp_no, dept_no, from_date, to_date
    from dept_emp
    where emp_no > 20001;

select * from dept_emp_copy;

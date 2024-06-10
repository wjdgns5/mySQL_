
create database mydb3;
use mydb3;

CREATE TABLE tb_student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    class CHAR(1) NOT NULL,
    score INT NOT NULL
);
    
INSERT INTO tb_student (name, class, score) VALUES
('Alice', 'A', 85),
('Bob', 'B', 75),
('Charlie', 'A', 65),
('David', 'A', 70),
('Eve', 'B', 95),
('Frank', 'C', 88),
('Grace', 'C', 92),
('Hannah', 'B', 78),
('Ian', 'A', 85),
('Jill', 'C', 90);

-- 전체 조회
select *
from tb_student;
-- id, class, score를 tb_student 테이블에서 출력
select id, class, score
from tb_student;

-- 1단계 : 클래스 별로 그룹화 시켜 보자.
select class, avg(score) as averagescore
from tb_student
group by class;

-- 2단계 : 클래스별로 그룹화된 결과 집합에서 필터 적용하기
-- having 절에 조건은 결과 집합이 먼저 생성된 후 기준으로 필터 조건을 성정해야 한다. !!! (주의)
select class, avg(score) as 평균
from tb_student
group by class
having 평균 >= 80;


-- 문제 각 클래스에서 가장 높은 점수와 가장 낮은 점수를 찾아 보세요.
-- 참고 만약 낮은 버전에 DB를 사용한다면 별칭의 컬럼은 적용안될 수 있다.  having max(count) >= 93으로 하면된다. having 고득점 >= 93
select class, max(score) as 고득점, min(score) as 저득점
from tb_student
group by class
having max(score) >= 93;

-- 참고 만약 낮은 버전에 DB를 사용한다면 별칭의 컬럼은 적용안될 수 있다. 

-- ---------------------------------------------------------

CREATE TABLE tb_employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary INT NOT NULL
);

INSERT INTO tb_employees (name, department, salary) VALUES
('John Doe', 'Sales', 48000000),
('Jane Smith', 'Sales', 55000000),
('Alice Johnson', 'Marketing', 50000000),
('Chris Lee', 'Marketing', 45000000),
('Bob Brown', 'HR', 35000000),
('Patricia Pink', 'HR', 40000000),
('Michael White', 'Engineering', 75000000),
('Anna Black', 'Engineering', 65000000),
('Linda Green', 'Engineering', 72000000),
('James Red', 'Engineering', 68000000),
('Larry Blue', 'Sales', 52000000),
('Jessica Purple', 'Sales', 51000000),
('Amber Yelow', 'Marketing', 47000000),
('Peter Orange', 'HR', 43000000),
('Lisa Teal', 'HR', 39000000);

select *
from tb_employees;

-- 문제 1
-- 각 부서별 평균 급여를 계산하세요 단! 소수점을 제거해주세요. round로 소수점 제거?
select department as 부서, round(avg(salary), 0) as 평균급여
from tb_employees
group by department;

-- 문제2
-- 평균 급여가 50000000 금액 이상인 부서를 찾아 주세요.
select department as 부서, round(avg(salary), 0) as 평균급여
from tb_employees
group by department
having avg(salary) >= 50000000;

-- 문제3
-- 각 부서에서 각 높은 급여를 받는 직원의 급여 금액을 출력해 주세요.
select department as 부서, max(salary) as 급여
from tb_employees
group by department;

-- 문제4
-- 특정 부서에서 근무하는 직원 수가 3명 이상인 부서만 출력해 주세요.
select department as 부서, count(department) as 직원수
from tb_employees
group by department
having count(department) >= 3;

-- 문제4
-- 특정 부서에서 근무하는 직원 수가 3명 이상인 부서만 출력해 주세요.
select department as 부서, count(*) as 직원수
from tb_employees
group by department
having count(department) >= 3;

-- 문제5
-- 각 부서별 평균 급여와 직원 수를 출력해 주세요.
select department as 부서, avg(salary) as 평균급여, count(department) as 직원수
from tb_employees
group by department
having count(department);

-- 문제 5 
-- 각 부서별 평균 급여와 직원 수를 출력해주세요 
SELECT department, avg(salary) as 평균급여,  count(*) as 부서인원수 
FROM tb_employees
GROUP BY department;
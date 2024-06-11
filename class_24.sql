
create database b_demo1;
use b_demo1;

create table 직원(
	직원ID int auto_increment primary key,
    직원이름 varchar(100) not null,
    부서 varchar(30) not null,
    지역 varchar(10) not null
);

INSERT INTO 직원 (직원ID, 직원이름, 부서, 지역)
	VALUES (1000, '김철수', '영업', '부산'),
		   (1001, '박영희', '마케팅', '부산'),
		   (1002, '이민지', '인사', '서울'),
		   (1003, '최민수', '디자인', '서울');
		   (1004, '야스오', '디자인', '서울');

select * from 직원;

-- 이상 현상을 방지하고자 테이블을 분리해 보자 
create table tb_departments(
	부서ID int auto_increment primary key,
    부서명 varchar(30) not null,
    지역 varchar(10) not null
);

INSERT INTO tb_departments (부서명, 지역)
	VALUES ('영업', '부산'),
		   ('마케팅', '부산'),
		   ('인사', '서울'),
		   ('디자인', '서울');

select * from tb_departments;

create table tb_employees(
	직원ID int auto_increment primary key,
    직원이름 varchar(100) not null,
    부서ID int,
    foreign key(부서ID) references tb_departments(부서ID)
);

INSERT INTO tb_employees (직원이름, 부서ID)
VALUES ('김철수', 1),
	   ('박영희', 2),
	   ('이민지', 3),
	   ('최민수', 4),
	   ('야스오', 4);

select * from tb_employees;
-- ------------------------------------------------
select * from tb_departments;
select * from tb_employees;

-- 직원에 정보와 부서가 있다면 부서명을 함께 출력
-- inner, outer 중에 어떤 녀석을 선택해야 하나요?
select *
from tb_employees as e
left join tb_departments as d
on e.부서ID = d.부서ID;

-- 마케팅 부서에 이름을 HR로 수정해주세요.
update tb_departments
set 부서명 = 'HR'
where 부서명 = '마케팅';

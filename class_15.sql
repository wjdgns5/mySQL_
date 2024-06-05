
-- drop table tb_student;
-- drop table tb_grade;
-- drop table tb_registration;

select * from tb_student;

create table tb_student(
	no int not null primary key,
    name varchar(20) not null, 
    gender enum('F', 'M') not null, 
    grade char(1),
    foreign key(grade) references tb_grade(grade)
);


create table tb_grade(
	grade char(1) primary key,
    score int
);

desc tb_student;
desc tb_grade;

select * from tb_student;
select * from tb_grade;

-- 테이블은 정보에 최소 단위 이다.
insert into tb_grade
	values('A', 100),
		  ('B', 80),
	      ('C', 60),
		  ('D', 40),
		  ('E', 20),
		  ('F', 0);

select * from tb_grade;

-- 오류 발생 아래에서 스키마를 추가함 (나이추가 해야됨)
insert into tb_student(no, name, gender, grade, age)
values('100', '길동', 'F', 25, 'B');

-- 스키마 구조 변경이 필요하다. (속성 에 나이를 추가한다.)
alter table tb_student add age int;
select * from tb_student;

-- 실행이 잘된다. 
insert into tb_student(no, name, gender, grade, age) 
	values('100', '길동', 'F', 'A', 35);
				
insert into tb_student(no, name, gender, grade, age) 
	values('200', '둘리', 'M', 'B', 25);
                     
 insert into tb_student(no, name, gender, grade, age) 
	values('300', '마이콜', 'F', 'B', 15);
 
 insert into tb_student(no, name, gender, grade, age) 
	values('400', '야스오', 'M', 'C', 25);
 
 insert into tb_student(no, name, gender, grade, age) 
	values('500', '티모', 'F', 'E', 25);
    
-- --------------------------------------
select * from tb_grade;
select * from tb_student;
-- --------------------------------------

-- Join 연산에 ON 절 사용 안해보기 !!!
-- 크로스 JOIN 이 된다.
select *
from tb_student
join tb_grade;

select *
from tb_grade -- 기준
join tb_student; -- 추가로 작업

-- 조인연산을 가능한 ON 절과 함께 사용하자.
-- JOIN 연산 종류 -- INNER JOIN, OUTER JOIN

-- INNER JOIN --> join
select *
from tb_student
join tb_grade on tb_student.grade = tb_grade.grade;

select *
from tb_grade
join tb_student on tb_student.grade = tb_grade.grade;

-- 2단계 (필요한 부분만 가져오기)
-- 속성에서 grade에 대한 정보를 무엇을 가져올지 몰라 오류가 발생한다.
select no, name, grade, age 
from tb_student -- 먼저 접근하는 테이블
join tb_grade -- 조인 하고싶은 테이블
on tb_student.grade = tb_grade.grade;

-- grade 에 tb_student 테이블에서 grade 속성을 가져오라고 지정하였다.
select no, name, tb_student.grade, age
from tb_student -- 먼저 접근하는 테이블
join tb_grade -- 조인 하고싶은 테이블
on tb_student.grade = tb_grade.grade; 

-- 속성에서 tb_student를 s 로 지정하고 tb_grade 를 g로 지정하였고 사용한다.
select s.no, s.name, s.grade, g.score
from tb_student as s
join tb_grade as g
on s.grade = g.grade;



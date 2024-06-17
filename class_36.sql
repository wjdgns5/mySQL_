-- JDBC 성능 최적화
use demo3;

select *
from user;

desc user;

select *
from user;

insert into user(name, email)
values ('admin', 'admin@naver.com');

-- 데이터 프로세스 리스트
show processlist;

-- -----------------------------
-- JDBC에서의 예외 처리

-- DML DCL DDL 
-- 컬럼 추가하는 쿼리를 만들어 보자. 

-- drop table user;

create table users(
	id int auto_increment primary key,
    username varchar(100) not null unique,
    password varchar(100) not null
);

desc users;

alter
table users
add column email varchar(100) null;

-- 이메일 에다가 Unique 제약을 추가해 보자
alter
table users
add constraint unique_email unique(email);

select *
from users;

insert into users(username, password, email)
values ('홍길동', 'asd123', 'a@naver.com'),
	   ('이순신', 'asd123', 'b@naver.com'),
	   ('박태환', 'asd123', 'c@naver.com');

select * from users where username = '홍길동' and passowrd = 'asd123';













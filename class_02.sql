-- 데이터 집합 생성
create database db_tenco_market;

use db_tenco_market;

-- 데이터 베이스 삭제하는 명령어
-- drop database db_denco_market;

-- 사전 기반 지식 : mysql 은 대문자, 소문자를 구별하지 않는다.
-- 단, 구분 하는 RDBMS 도 있다.

-- 테이블 설계 하기

-- 고객 테이블 생성
create table userTBL(
	userName char(3) not null primary key,
    birthYear int not null,
    addr char(2) not null,
    mobile char(12)
);

show tables;
select * from userTBL;
desc userTBL;

-- 구매 테이블 생성
create table buyTBL(
	id int not null auto_increment,
    userName char(3) not null,
    prodName char(3) not null,
    price int not null,
    amount int,
    primary key(id), -- id 를 기본키로 지정한다.
    foreign key(userName) references userTBL(userName) -- 외래키 지정방법 userTBL 테이블 안에 있는 userName을 참조한다.
);

show tables;
select * from buyTBL;
desc buyTBL;

use demo3;
-- 2 정규화, 2NF

-- 복합키 생성 방법 확인
create table 수강정보 (
	학생ID INT,
    과목코드 varchar(10),
    과목명 varchar(10),
    담당교수 varchar(10),
    primary key(학생ID, 과목코드)
);

desc 수강정보; -- PK가 2개가 보인다.

-- -----
-- 2NF 수강 정보 테이블을 문제해결

-- 수강 정보 테이블 만들기
create table 수강정보 (
	학생ID INT,
    과목코드 varchar(10)
);

insert into 수강정보 (학생ID, 과목코드)
VALUES (1, 'MAT101'),
		(1, 'SCI101'),
		(2, 'MAT101'),
		(2, 'ENG101');

 
-- 과목 정보 테이블 만들기
create table 과목정보 (
	과목코드 varchar(10),
    과목명 varchar(10),
    담당교수 varchar(10)
);

insert into 과목정보 (과목명, 담당교수)
values ('MAT101', '수학', '김교수'),
		('SCI101', '과학', '이교수'),
		('ENG101', '영어', '박교수');


-- 2정규화를 만족하도록 테이블을 재설계
-- 1 영화 테이블 : 영화 관련 정보 저장
-- 2 감독 테이블 : 감독 관련 정보 저장
  
  create table movie(
	ID INT auto_increment primary key,
    영화이름 varchar(20) not null,
    개봉일 date not null,
    장르 varchar(20) not null
  );
  
  insert into movie(영화이름, 개봉일, 장르)
  values ('인셉션', '2010-07-16', '공산 과학'),
		('다크 나이트', '2008-07-18', '액션'),
		('타이타닉', '1997-12-19', '로맨스'),
		('아바타', '2009-12-18', '공상 과학'),
		('인터스텔라', '2014-11-07', '공상 과학');

select *
from movie;

create table director(
	ID INT auto_increment primary KEY,
	감독이름 varchar(20) NOT NULL,
    감독주소 varchar(20) NOT NULL
);

INSERT INTO director(감독이름, 감독주소)
	values('크리스토퍼 놀란', 'LA엘름 스트리트 1234번지'),
		('제임스 카메론', 'NY메이플 애비뉴 5678번지');

select *
from director;

-- drop table movie;
-- drop table director;

-- 조별 실습코드 
-- 영화에 관련된 데이터 베이스를 구축하자.
-- ex) 영화 제목, 개봉연도, 매출액, 평점, 관객수, 배우, 배우이름, 배우의정보, 영화에 누가 출연했는지
-- 영화, 배우 출연 테이블을 만들어라 






        
        
-- ----------------------------------------------------------
-- 조별 실습코드 
-- 영화에 관련된 데이터 베이스를 구축하자.
-- ex) 영화 제목, 개봉연도, 매출액, 평점, 관객수, 배우, 배우이름, 배우의정보, 영화에 누가 출연했는지
-- 영화, 배우 출연 테이블을 만들어라 

create table movie(
	ID int auto_increment primary key,
    제목 varchar(20) not null,
    개봉년도 date not null,
    평점 float not null,
    관객수 long not null,
    상영시간 int not null
);

insert into movie(제목, 개봉년도, 평점, 관객수, 상영시간)
values('인셉션', '2023-04-19', 9.5, 5000000, 148),
('다크나이트', '2023-11-15', 9.65, 4000000, 152),
('올드보이', '2013-11-21', 9.03, 3000000, 120),
('살인의추억', '2023-11-08', 9.3, 5000000, 132),
('기생충', '2023-11-01', 9.2, 10000000, 132);

select *
from movie;

create table actor(
    ID int auto_increment primary key,
    이름 varchar(20) not null,
    나이 int not null,
    키 int not null,
    생년월일 date
);

insert into actor(이름, 나이, 키, 생년월일)
values('레오나르도 디카프리오', 49, 181, '1974-11-11'),
('크리스찬 베일', 50, 183, '1974-01-30'),
('최민식', 62, 177, '1962-05-30'),
('송강호', 57, 180, '1967-02-25'),
('박소담', 32, 165, '1991-09-08');

select *
from actor;

-- drop table movie;
-- drop table actor;














-- 데이터베이스 생성
create database quizdb;

-- 데이터 베이스 사용
use quizdb;

-- quiz 테이블 생성 --
create table quiz(
	id int auto_increment primary key,
    question varchar(500) not null,
    answer varchar(500) not null
);

-- quiz 테이블의 속성값 확인
desc quiz;

-- 기본 샘플 데이터 입력
Insert into quiz(question, answer)
	values ('대한민국의 수도는?', '서울'),
		('한반도의 남쪽에 위치한 나라는?', '대한민국'),
		('세계에서 가장 높은 산은?', '에베레스트'),
        ('태양계의 3번째 행성은?', '지구'),
        ('한국의 전통 명절 중 하나로 음력 8월 15일에 해당하는 날은?', '추석'),
        ('임진왜란 종전 년도는?', '1598'),
        ('고기압과 저기압에서 바람이 부는 방향은?', '고기압');

-- quiz 테이블의 모든 속성 및 데이터을 출력
select *
from quiz;

-- 자바 Query에 넣는거 
insert into quiz(question, answer) values (?,?);

-- 자바에서 QuizGame에 insert 한거 확인
select *
from quiz;

-- 자바에서 퀴즈 게임 시작 생각해 보기 
select *
from quiz 
order by rand() -- rand() 무작위로 마음대로 섞는다.
limit 1;

SELECT * FROM quiz;

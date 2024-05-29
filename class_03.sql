-- 데이터 입력 하기
/*
insert into usertbl(userName, birthYear, addr, mobile)
values ('이승기', 1987, '서울', '011-111-1111');

insert into usertbl(userName, birthYear, addr, mobile)
values ('김경호', 1971, '전남', '019-333-3333');

*/

insert into usertbl(userName, birthYear, addr, mobile)
values ('이승기', 1987, '서울', '011-111-1111'),
	('김경호', 1971, '서울', '011-333-3333'),
    ('윤종신', 1969, '전남', ''),
    ('임재범', 1963, '경남', '011-222-2222'),
    ('은지원', 1978, '서울', '011-444-4444'),
    ('조관우', 1965, '경북', '011-555-5555'),
    ('김범수', 1987, '경기', '011-111-1111'),
    ('조용필', 1987, '경남', '011-111-1111'),
    ('바비킴', 1987, '서울', '011-111-1111'),
    ('성시경', 1987, '경남', null);
    
desc usertbl;

select * from usertbl;

-- buyTBL 데이터 한번에 입력 
insert into buytbl(userName, prodName, price, amount)
values  ('김범수', '운동화', 30, 2),
		('김범수', '노트북', 1000, 1),
        ('조용필', '모니터', 200, 1),
        ('바비킴', '모니터', 200, 5),
        ('김범수', '청바지', 50, 3),
        ('바비킴', '메모리', 80, 10),
        ('성시경', '책', 15, 5),
        ('은지원', '책', 15, 2),
        ('은지원', '청바지', 50, 1),
        ('바비킴', '운동화', 30, 2),
        ('은지원', '책', 15, 1),
        ('바비킴', '운동화', 30, 2);
        
select * from buytbl;

-- 홍길동은 현재 userTBL 테이블에 존재하지 않는 갑이다.
-- 그래서 buytbl row 값으로 들어 올 수 없다. (제약 때문에)
insert into buytbl(userName, prodName, price, amount)
values  ('홍길동', '운동화', 30, 2);

-- 특정 데이터를 조회하고 싶다면 --> 필터를 건다 (WHERE) 이라는 예약어를 사용하면 된다.
select * from usertbl where userName = '이승기'; -- 결과집합 단일행
select * from buyTBl where userName = '김범수';  -- 결과집합 다중행

-- usertbl 이승기 사람 조회 해보자
select * from usertbl Where userName LIKE "%이승기";


-- 다른 테이블이 삭제 하고자 하는 테이블을 참조 하고 있다면 테이블 삭제가 바로 안된다.
-- (굳이 삭제하고 싶다면 참조(reference)가 되어있는 테이블을 먼저 삭제 해야 한다.)
-- drop table buytbl;
-- drop table usertbl; -- 테이블 삭제 명령어

-- delete 데이터를 삭제 하는 명령어 이다.
-- delete from usretbl; -- 데이터 삭제 명령어
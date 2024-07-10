
use demo6;
-- students 테이블 생성
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);

-- students 테이블에 샘플 데이터 삽입
INSERT INTO students (name, email) VALUES ('김철수', 'chulsoo@example.com');
INSERT INTO students (name, email) VALUES ('이영희', 'younghee@example.com');
INSERT INTO students (name, email) VALUES ('박민수', 'minsoo@example.com');

-- alumni 테이블 생성
CREATE TABLE alumni (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);

-- alumni 테이블에 샘플 데이터 삽입
INSERT INTO alumni (name, email) VALUES ('김철수', 'chulsoo@example.com');
INSERT INTO alumni (name, email) VALUES ('최영수', 'youngsoo@example.com');
INSERT INTO alumni (name, email) VALUES ('이영희', 'younghee@example.com');

-- -----------------------------------------------------------------------

select name, email
from students
union
select name, email
from alumni;

select name, email
from students
union all
select name, email
from alumni;

-- ------------------------------------

-- reservations 테이블 생성
CREATE TABLE reservations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT,
    reservation_date DATE,
    guest_name VARCHAR(50)
);

-- rooms 테이블 생성
CREATE TABLE rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number INT
);

-- reservations 테이블에 샘플 데이터 삽입
INSERT INTO reservations (room_id, reservation_date, guest_name) VALUES (1, '2024-06-01', '김철수');
INSERT INTO reservations (room_id, reservation_date, guest_name) VALUES (2, '2024-06-02', '이영희');
INSERT INTO reservations (room_id, reservation_date, guest_name) VALUES (3, '2024-06-03', '박민수');

-- rooms 테이블에 샘플 데이터 삽입
INSERT INTO rooms (room_number) VALUES (101);
INSERT INTO rooms (room_number) VALUES (102);
INSERT INTO rooms (room_number) VALUES (103);



-- 특정 월의 일자별 예약 가능 정보를 조회 
-- 6월 1일부터 ~ 5일까지 예약 가능한 정보 조회

select *
from reservations

join (
		rooms = 
	)



select r.*
from reservations as r
union all
select m.*
from rooms as m;















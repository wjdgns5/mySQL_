
create database m_boad;
use m_boad;

create table user(
	id int primary key auto_increment,
    username varchar(100) not null unique, -- ex) 닉네임인 경우 (unique를 통해 중복검사)
    password varchar(255) not null,
    email varchar(100) not null,
    userRole varchar(20),
    createDate timestamp
);

-- board table, reply table 설계
-- 하나의 게시글에는 여러개의 댓글이 달릴 수 있다. 1:N

create table board(
	id int primary key auto_increment,
    userId int, -- 만약에 회원탈퇴를 하면 not null 이면 이전에 작성된 게시물도 사라져서 (회사마다 정책이 다르다..)
    title varchar(100) not null,
    content text,
    foreign key(userId) references user(id)
);

create table reply(
	id int primary key auto_increment,
    userId int,
    boardId int,
    content varchar(300) not null,
    createDate timestamp,
    foreign key(userId) references user(id) on delete set null, -- 사용자의 id가 없다면 null로 처리
    foreign key(boardId) references board(id)
);

-- 스키마 구조를 변경하는 쿼리 -- DDL, DML, DCL
-- user 테이블에 address 컬럼을 추가해 주세요.

alter table user
add address varchar(100) not null;


INSERT INTO user (username, password, email, address, userRole, createDate)
VALUES
('홍길동', '1234', 'hong@example.com', '서울시 강남구', 'admin', NOW()),
('이순신', '1234', 'lee@example.com', '부산시 해운대구', 'user', NOW()),
('김유신', '1234', 'kim@example.com', '대구시 수성구', 'user', NOW());

select *
from user;


-- board 테이블에 readCount 컬럼을 추가해 주세요.
alter table board
add column readCount int;


INSERT INTO board (userId, title, content, readCount)
VALUES
(1, '첫 번째 글입니다', '안녕하세요, 홍길동입니다. 이것은 테스트 게시글입니다.', 150),
(2, '이순신의 포스팅', '부산에서 이순신입니다. 바다가 아름다운 날입니다.', 45),
(3, '대구의 뜨거운 여름', '여름이 기승을 부리는 대구에서 김유신입니다.', 30);

select *
from board;


INSERT INTO reply (userId, boardId, content, createDate)
VALUES
(2, 1, '홍길동님의 글 잘 읽었습니다!', NOW()),
(3, 1, '저도 의견이 같네요.', NOW()),
(1, 2, '부산도 좋지만 서울도 좋아요!', NOW()),
(1, 3, '대구가 그렇게 덥군요, 조심하세요!', NOW());

select *
from reply;

-- ----------------------------

select * from user;
select * from board;
select * from reply;

-- 특정 사용자의 게시글 조회 (사용자 ID가 1인 홍길동의 모든 게시글을 보고 싶다면)
select b.title, b.content, b.readCount
from board b
where b.userId = 1;

-- 1번 게시글에 대한 모든 댓글 조회
select u.username, r.content, r.createDate
from reply as r
join user as u
on r.userId = u.id
where r.boardId = 1;

-- 게시글에 댓글 달기
-- 예를 들어, 사용자 ID 2가 게시글에 ID 1에
-- "새로운 댓글입니다"라는 내용의 댓글을 추가하려면 다음 쿼리를 사용합니다.
-- Insert into ... 
insert into reply(userId, boardId, content, createDate)
values (2, 1, '새로운 댓글입니다.', now());

-- 특정 사용자의 게시글 해당 게시글의 댓글 수 조회
-- 제목, 내용, 작성자 이름, 댓글 수, 조회
-- 글1 , ..., 홍길동, 19
-- 글2 , ..., 이순신, 10

select b.title, b.content, u.username, COUNT(r.id) as CommentCount
from board b
join user u On b.userId = u.id
left join reply r on b.id = r.boardId
group by b.id;

-- 조회수가 가장 높은 게시글 상위 2개만 조회
select title


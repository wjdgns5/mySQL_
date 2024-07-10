create database if not exists db_todo2; -- 만약 m_todo가 존재하지 않는다면 데이터베이스를 생성해라
use db_todo2;

-- 정규화 1, 2, 3 정규 테이블 설계 

-- users 테이블을 생성 
create table if not exists users(
	id int auto_increment primary key, 
    username varchar(50) not null,
    password varchar(255) not null, 
    email varchar(100) not null, 
    created_at timestamp default current_timestamp
);
desc users;
alter table users add constraint unique(username);

-- todos 테이블 생성 
create table if not exists todos(
	id int auto_increment primary key, 
  title varchar(100) not null, 
  description text, 
  created_at timestamp default current_timestamp,
  due_date date, 
  completed boolean default false,
  user_id int not null,
  foreign key(user_id) references users(id)
);

-- 샘플 데이터 삽입
-- users 테이블에 데이터 삽입
INSERT INTO users (username, password, email) VALUES
('홍길동', 'asd123', 'hong@example.com'),
('김철수', 'asd123', 'kim@example.com'),
('이영희', 'asd123', 'lee@example.com');

-- todos 테이블에 데이터 삽입
INSERT INTO todos (user_id, title, description, due_date, completed) VALUES
(1, '할 일 1', '할 일 1에 대한 설명입니다.', '2023-12-31', FALSE),
(1, '할 일 2', '할 일 2에 대한 설명입니다.', '2024-01-15', TRUE),
(2, '할 일 3', '할 일 3에 대한 설명입니다.', '2024-02-28', FALSE),
(3, '할 일 4', '할 일 4에 대한 설명입니다.', '2024-03-10', TRUE);

select * from users;
desc users;
select * from todos;
desc todos;

select * from users where id = 1;
delete from users where id = 19;
update users set password = 'aaaa', email = 'b@naver.com' where id = 3;

insert into todos(user_id, title, description, due_date, completed) values(?, ?, ?, ?, ?);

select * from todos where id = 1;

SELECT * FROM todos WHERE id = 2;

SELECT * FROM todos;

update todos 
set title = "할일없음1", description = "할일을 다 끝냈습니다." 
where id = 3;

update todos set title = ?, description = ? where id = ?;

delete from todos where id = ? and user_id = ? ;



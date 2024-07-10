create database db_todo;
use db_todo;
-- 테이블 생성
create table tb_todo(
	id int auto_increment primary key,
    title varchar(255) not null,
    description text not null,
    conpleted boolean not null default false,
    create_at timestamp default current_timestamp
);

desc tb_todo;
select * from tb_todo;

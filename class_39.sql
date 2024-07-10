create database demo6;
use demo6;

create table posts(
	id int auto_increment primary key,
    title varchar(255) not null,
    content text not null,
    created_at timestamp default current_timestamp
);

select *
from posts; 

select *
from posts
order by created_at desc;

delete
from posts
where id = 3;

select *
from posts
where id = 3;

SELECT * FROM posts ORDER BY created_at DESC;



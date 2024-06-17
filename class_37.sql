
create database studentdb;

use studentdb;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

select *
from users
where username = '홍길동' and password = 'asd123';

-- -------------------------------------------
--
desc students;

Insert into students(name, age, email)
values("홍길동", "14", "a@nate.com"),
	  ("이순신", "12", "b@nate.com"),
	  ("권율", "15", "c@nate.com");
      
select * from students;

-- select * from students;

-- Insert into students(name, age, email) values(?, ?, ?);

-- Update students set name = '미역', age = 11 where name = '고구마' && age = 17;

-- delete from students where name = ? and age = ?;

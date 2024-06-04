
-- drop table db_movie;

create table db_movie (
	id int primary key auto_increment,
    title varchar(20) unique not null,
    director varchar(5) not null,
    release_date date not null,
    genre varchar(10) not null,
    rating float
);

desc db_movie;

Insert into db_movie(title ,director, release_date, genre, rating)
values("괴물", "봉준호", "2006-07-27", "드라마", 8.28),
	  ("극한직업", "이병헌", "2019-01-23", "코미디", 9.20),
      ("명량", "김한민", "2014-07-30", "사극", 9.17),
      ("신과함께 - 죄와 별", "김용화", "2017-12-20", "판타지", 7.56),
      ("밀양", "임권택", "2016-09-07", "드라마", 7.76),
      ("반도", "연상호", "2020-07-15", "액션", 6.71),
      ("베테랑", "류승완", "2015-08-05", "액션", 8.49),
      ("변호인", "양우석", "2015-07-22", "드라마", 8.41);
    
select * from db_movie;

-- db_movie 에서 감독 이름이 '김'으로 시작하는 데이터를 조회하세요. 
select *
from db_movie
where director like '김%';








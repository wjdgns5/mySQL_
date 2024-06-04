
-- 테이블 설계시에 인덱스 제약을 추가 하는 방법
create table student2(
	id int primary key,
    name varchar(50) not null,
    grade int not null,
    major varchar(50),
    index idx_major(major)
);

desc student2;

-- 이미 생성된 테이블에 인덱스를 추가하는 방법을 알아보자
alter table student2 add index idx_grade(grade);

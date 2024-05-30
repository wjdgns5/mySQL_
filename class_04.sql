
create database mydb;

use mydb;

-- 테이블 생성하는 방법
create table student(
student_id int,
name varchar(50) not null, -- varchar(50) : 최대 50자리까지 적을 수 있고 만약 사용자가 3글자만 쓰면 메모리가 3글자로 줄어든다.
grade int not null,
major varchar(50) not null
);

select * from student;

-- 제약사항을 확인하는 방법
desc student;

-- 과목 테이블 생성
create table subject(
	subject_id int,
    subject_name varchar(50) not null,
    credit int not null,
    department varchar(5),
    professor char(50) not null
);
-- subject 테이블에 모든 것을 출력해라
select * from subject;

-- 이미 생성된 테이블에 기본키를 추가하는 방법
alter table student add primary key(student_id);
-- 제약사항을 확인하는 방법 
desc student;
-- 사전 기반 지식 (데이터가 들어가 있는 상태에서 빈 값이 포함 되어 있다면 기본키를 추가할 수 없다.)
-- 즉, NULL 값이 있어서는 안된다.

-- 이미 생성된 테이블에 기본키를 추가하는 방법
alter table subject add primary key(subject_id);
-- 제약사항을 확인하는 방법
desc subject;

-- 주문
-- 테이블 명 : order
-- 하나의 row 에 식별하는 값 --> id : pk
-- 고객 주문 내용 - 문자
-- 상품 이름
-- 상품 가격
-- 수량 

-- order 는 예약어이다. --> 이때는 `order` 로 사용하여 예약어가 아니다 라는 것을 알려줘야 한다.
-- 예약어는 기본적으로 테이블 이름을 선점할 수 없다.
-- 하지만 강제적으로 ` ` 작은 따옴표를 사용해서 테이블 이름이라고 명시할 수 있다. 
create table `order`(
id int primary key,
price bigint,
customer_order varchar(50),
product_name varbinary(20) not null,
quantity int not null, 
order_data date not null
);
-- 제약사항을 확인하는 방법
desc `order`;

-- 도전과제 : 위 형식에 맞는 insert 구문을 만들고 실행하세요.
insert into `order`(id, price, customer_order, product_name, quantity, order_data)
values(1, 15000, 'or123', '청바지', 3, '2024---05-30');

select * from `order`;

-- 도전과제1
create table employee(
id int primary key,
name varchar(20) not null,
age int,
department varchar(20) not null
);
desc employees;

create table customer(
id int primary key,
name varchar(50) not null,
email varchar(50),
address varchar(100) not null
);
desc customer;










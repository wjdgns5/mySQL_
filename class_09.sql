
-- drop table `order`;

CREATE TABLE `order` (
  id INT PRIMARY KEY,
  order_name VARCHAR(20) NOT NULL,
  product_name VARCHAR(20) NOT NULL,
  quantity INT NOT NULL,
  order_date DATE NOT NULL
);

INSERT INTO `order` (id, order_name, product_name, quantity, order_date) 
VALUES
(1, '홍길동', '피자', 2, '2022-02-26'),
(2, '김영희', '치킨', 3, '2022-02-26'),
(3, '이철수', '햄버거', 1, '2022-02-27'),
(4, '박지민', '스테이크', 2, '2022-02-27'),
(5, '최영희', '짬뽕', 1, '2022-02-27'),
(6, '박서준', '초밥', 3, '2022-02-28'),
(7, '김민지', '파스타', 2, '2022-02-28'),
(8, '정재은', '토스트', 1, '2022-02-28'),
(9, '신은주', '감바스', 2, '2022-03-01'),
(10, '유지훈', '돈까스', 1, '2022-03-01');

select * from `order`;
desc `order`;

-- Update 구문을 사용할 때는 천천히 WHERE 확인하기
-- 1. id가 1인 주문의 상품 수량을 5개로 수정

UPDATE `order`
SET quantity = 5
WHERE id = 1;

-- 2. id가 3인 사람에 메뉴를 감바스로 수정해 주세요
update `order`
set product_name = '감바스'
where id = 3;

-- 3. id가 5인 주문의 주문 일자를 '2024-05-31'로 수정

update `order`
set order_date = '2024-05-31'
where id = 5;

-- 주문 수량이 2개 이상이고, 상품명이 '피자'인 주문의 수령인 이름을 '김철수'로 지정

	update `order`
    set order_name = '김철수'
    where product_name = '피자' and quantity >=2;

-- 주문 날짜가 '2022-02-28'이고, 상품명이 '초밥'인 주문의 주문 수량을 5개로 수정
	update `order`
    set quantity = 5
    where order_date = '2022-02-28' and product_name = '초밥';

-- SQL를 3가지로 분류할수 있다.
-- DDL : (Data Definition Language) : 테이블의 구조를 변경할 때 사용하는 구문
-- DML
-- DCL

	-- 테이블의 구조를 변경
	alter table `order` add column address varchar(100);
-- '경기도 성남시'로 수정 ?? <-- 컬럼이 존재 하지 않음 !!
-- 주문 수량이 1개 이하이고, 상품명이 '감바스'인 주문의 수령인 주소를 '경기도 성남시'로 수정

update `order`
set address = '부산시 진구'
where quantity = 1 and product_name = '감바스';

select * from `order`;

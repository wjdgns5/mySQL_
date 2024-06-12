
-- 상품 테이블 생성 --
create table tb_products(
	product_id int auto_increment primary key,
    product_name varchar(255),
    category_id int,
    price decimal (10,2),
    size varchar(10),
    color varchar(50),
    foreign key(category_id) references tb_categories(category_id)
);

select *
from tb_products;

select *
from tb_categories; 

-- 남성복 상품 입력
insert into tb_products(product_name, category_id, price, size, color)
values('남성셔츠', 4, 49000, 'L', '퍼블'),
		('남성면바지', 7, 55000, 'M', '핑크'),
		('남성슬랙스', 8, 105000, 'XL', '퍼블');

-- 여성복 상품 입력
insert into tb_products(product_name, category_id, price, size, color)
values('여성셔츠', 6, 49000, 'L', '퍼블'),
		('여성면바지', 9, 55000, 'M', '핑크'),
		('여성슬랙스', 10, 105000, 'XL', '샤인');
        
select *
from tb_products;

-- 특정 카테고리에 속하는 모든 상품 조회
-- 1단계 (남성, 여성 팬츠에 속하는 상품을 모두 조회)
select p.product_name, p.price, p.size, p.color
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id -- join 보다 on 이 연산순서가 먼저이다.
where c.category_name = '면바지';

-- 2단계 (만약 여성 면바지만 출력하고 싶다면)
-- 덩어리 덩어리 이렇게 크게 봐라
-- 조인 --> 서브쿼리 
select p.product_name, p.price, p.size, p.color, c.parent_id
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id -- join 보다 on 이 연산순서가 먼저이다.
where c.category_name = '면바지' and c.parent_id =5;
-- ----------------------

select p.product_name, p.price, p.size, p.color, c.parent_id
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id -- join 보다 on 이 연산순서가 먼저이다.
where c.category_name = '면바지' 
						and c.parent_id =
									(select * from tb_categories where category_name = '팬츠' );


select *, parent_id from tb_categories where category_name = '팬츠';

select parent_id from tb_categories where category_name = '팬츠';

select category_id, parent_id from tb_categories 
where category_name = '팬츠' and parent_id = 2;

select category_id from tb_categories 
where category_name = '팬츠' and parent_id = 2;


-- 2단계 (만약 여성 면바지만 출력하고 싶다면) (답)
-- 덩어리 덩어리 이렇게 크게 봐라
-- 조인 --> 서브쿼리  
select p.product_name, p.price, p.size, p.color, c.parent_id
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id -- join 보다 on 이 연산순서가 먼저이다.
where c.category_name = '면바지' 
						and c.parent_id =
									(select category_id from tb_categories 
									where category_name = '팬츠' and parent_id = 2);
                                    
-- 문제 1 남성복 셔츠만 출력 하시오.
-- 테이블 확인
select * from tb_products;
select * from tb_categories;

select *
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id;

-- 문제 1 남성복 셔츠만 출력 하시오.
select p.product_name, p.price, p.size, p.color, c.parent_id
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id
where p.product_name like '%셔츠' and c.parent_id = 1;


select p.product_name, p.price, p.size, p.color, c.parent_id
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id
where c.category_name = '셔츠' and c.category_id = (select category_id
						from tb_categories where category_name = '셔츠' and category_id = 4);

select category_id
from tb_categories
where category_name = '셔츠' and category_id = 4;


-- 문제 2 여성복 슬랙스만 출력 하시오.

select p.product_name, p.price, p.size, p.color, c.parent_id
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id
where c.category_id =
		(select category_id from tb_categories where category_name = '슬랙스' and parent_id = 5);

-- 특정 색상의 상품이 있는 모든 카테고리 조회 (서브쿼리 사용할 필요 없음)
-- 예를 들어, '흰색' 상품이 있는 모든 카테고리를 조회하는 쿼리입니다.

-- 테이블 확인
select * from tb_products;
select * from tb_categories;

select *
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id;

select p.product_name, p.price, p.color, c.category_name, c.parent_id
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id
where p.color = '퍼블';

-- 가장 비싼 상품을 가진 카테고리 찾기 (서브쿼리 사용할 필요 없음)
-- 각 카테고리 중 가장 비싼 상품을 가지고 있는 카테고리와 그 상품의 정보를 조회하는 쿼리입니다

-- 테이블 확인
select * from tb_products;
select * from tb_categories;

select *
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id;

select p.product_name, max(p.price), p.color, c.category_id, c.category_name
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id;








                                                
                                                


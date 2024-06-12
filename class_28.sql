
use mydb3;

-- tb_categories 테이블 생성
create table tb_categories(
	category_id int auto_increment primary key,
    category_name varchar(100) not null
);

insert into tb_categories(category_name) 
values('상의');

insert into tb_categories(category_name) 
values('하의');

insert into tb_categories(category_name) 
values('외투');

-- tb_products 테이블 생성
create table tb_products(
	product_id int auto_increment primary key,
    product_name varchar(255),
    category_id int,
    price decimal(10,2),
    size enum ('S', 'M', 'L', 'XL'),
    color varchar(50),
    foreign key(category_id) references tb_categories(category_id)
);

select *
from tb_categories;

insert into tb_products(product_name, category_id, price, size, color)
	values ('티셔츠', 1, 19900, 'M', '흰색'); 
    
insert into tb_products(product_name, category_id, price, size, color)
	values ('청바지', 2, 49000, 'L', '청색'); 
    
insert into tb_products(product_name, category_id, price, size, color)
	values ('자켓', 3, 99000, 'L', '검정색');

insert into tb_products(product_name, category_id, price, size, color)
	values ('셔츠', 1, 30000, 'S', '보라색'); 

select *
from tb_products;

-- 특정 카테고리에 속하는 모든 상품을 조회 쿼리
select p.product_name, p.price, p.size, p.color
from tb_products as p
join tb_categories as c
on p.category_id = c.category_id -- on 안하면 corss join 이 된다.
where c.category_name = '상의';


DESC reservation;

select *
from reservation;

select * from restaurant;

select restaurant_id from restaurant
where restaurant_id = 1;

desc customer;
select *
from customer;

-- where customer_id;
insert into customer (customer_name, phone, state, location_id)
values ('홍길일', '010-5555-2222', 'Y',2),
('홍길이', '010-2222-2222', 'Y', 3),
('홍길삼', '010-3333-2222', 'Y', 4);


select *
from food;

select customer_id from customer where customer_id = 1;


INSERT INTO reservation(reservation_state, reservation_time, customer_id, restaurant_id)
values ('Y', current_timestamp(),
(select customer_id from customer where customer_id = 1),
(select restaurant_id from restaurant where restaurant_id = 1)
);

INSERT INTO reservation(reservation_state, reservation_time, customer_id, restaurant_id)
values ('Y', current_timestamp(),
(select customer_id from customer where customer_id = 2),
(select restaurant_id from restaurant where restaurant_id = 2)
);

INSERT INTO reservation(reservation_state, reservation_time, customer_id, restaurant_id)
values ('Y', current_timestamp(),
(select customer_id from customer where customer_id = 3),
(select restaurant_id from restaurant where restaurant_id = 3)
);


select * from reservation where restaurant_id = 1;
select * from restaurant;
select * from location;

select *
from reservation;
-- where restaurant_id = 1;

select *
from reservation;






use demo3;

create table user (
	id int auto_increment primary key,
    name varchar(100) not null,
    email varchar(100) null
);

select *
from user
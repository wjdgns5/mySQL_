
show grants for 'tenco1'@'%';
show grants for 'tenco1'@'localhost';

use mydb2;

select *
from tb_class;

insert into tb_class values(2024, 'db', '야스오'); -- insert 권한을 받은적이 없어서 오류가 뜬다. Error Code : 1142

-- update, delete


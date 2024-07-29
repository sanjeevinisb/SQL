create database restuarant;

use restuarant;

create table restuarant(id int not null, r_name varchar(19) unique, 
quantity_kg int, r_type varchar(10), 
place varchar(17)); 

alter table restuarant add constraint qua_chk check(quantity_kg>1);

alter table restuarant modify column s_type bigint;

alter table restuarant add constraint type_chk check(r_type>1);
alter table restuarant drop constraint type_chk; 
desc restuarant;

insert into restuarant values(1,'idli',23,678,'kamalanagar');
insert into restuarant values(2,'dosa',64,867,'kengei');
insert into restuarant values(3,'vada',765,7655,'KRpuram');
insert into restuarant values(4,'puri sagu',43,9675,'vs layoout');
insert into restuarant values(5,'tea coffee',45,87987,'girinagar');

select*from restuarant ;

alter table restuarant add column r_people_no int not null;

alter table restuarant drop r_people_no;
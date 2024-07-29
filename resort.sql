create database resort;

use resort;

create table resort(id int not null,r_name varchar(50) unique,r_location varchar(20) primary key,r_price bigint,r_no int);

alter table resort add constraint price_chk check(r_price>10000000);
alter table resort drop constraint price_chk;
desc resort;

select*from resort;

insert into resort values(1,'Ashirvad','rajajinagar',200000000,146);
insert into resort values(2,'Gokul','btm',300000000,123);
insert into resort values(3,'Ashraya','rrnagar',250000000,234);
insert into resort values(4,'Krishav','sampigenagar',38000000,111);
insert into resort values(5,'Karna','sumannagar',450000000,122);


alter table resort add column no_of_visitors int not null;

alter table resort drop no_of_visitors;

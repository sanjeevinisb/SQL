create database train;

use train;

create table train(id int ,t_source varchar(50),t_destination varchar(50),t_loco_pilot varchar(50) unique,t_loco_pilot_age int,
t_platform int primary key);

alter table train add constraint age_chk check(t_loco_pilot_age>24);
alter table train drop constraint age_chk;
desc train;

select*from train;

insert into train values(1,'dharwad','haveri','Amith',25,170678);
insert into train values(2,'banglore','davangere','kiran',26,145089);
insert into train values(3,'gadag','hubli','Rohit',27,123678);
insert into train values(4,'bijapur','gulbarga','rakesh',29,324756);
insert into train values(5,'hospet','kholapur','avnith',30,420098);


alter table train add column t_passenger_no int not null;

alter table train drop t_passenger_no;



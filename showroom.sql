create database show_room;

use show_room;

create table show_room(id int not null, s_r_name varchar(15) not null, s_r_place varchar(25) unique, s_r_owner varchar(25) unique,
model varchar(20), shopkeeper varchar(19), visited timestamp, cost bigint, orders int, 
constraint cost_chk check(cost>17000000), constraint order_chk check(orders>2));

desc show_room;

select*from show_room;

insert into show_room values(1,'Divine drive','vijayanagar','Suresh','BMW','Karan',now(),18000000,123);
insert into show_room values(2,'Opulent cars','Mysore','Karthik','Skoda','Ayaan',now(),17500000,675);
insert into show_room values(3,'Ellite motors','Banglore','Ajay','Nexon','Kiran',now(),19000000,453);
insert into show_room values(4,'Xtream motors','Hangal','Jayam','Honda','Kishan',now(),17800000,123);
insert into show_room values(5,'Supreme motors','Hubli','Tanishk','Maruthi','Anuj',now(),19500000,567);
insert into show_room values(6,'Luxury lane','Belagavi','Sandeep','swift','Ashwath',now(),20000000000,876);
insert into show_room values(7,'Turbo wheels','Raichur','Arun','Tiago','Anish',now(),3200000000,978);
insert into show_room values(8,'Velocity cars','Delhi','Ansh','Hyundai','Adithya',now(),23480000,234);
insert into show_room values(9,'Power drive','Ranchi','Ananth','Ertiga','Bhuvan',now(),189000000,546);
insert into show_room values(10,'Majestic motor','Kerala','Mohan','Nexa','Amith',now(),1780000000,743);
insert into show_room values(11,'Regal Rides','Bihar','Mahesh','Breeza','Akhil',now(),18900000,345);
insert into show_room values(12,'Sovereign auto','Madhyapradesh','Punch','Skoda','Samanth',now(),1222000000,420);
insert into show_room values(13,'Noble car','Haryana','Vishwas','Innova','Uday',now(),32400000000,624);
insert into show_room values(14,'Refined wheels','Maharashtra','Rakesh','Dzire','Vinay',now(),12700000000,180);
insert into show_room values(15,'Royal Rides','Rajasthan','Aman','Skoda','Wagon',now(),2340000000,127);
insert into show_room values(16,'Ultra drive','Tumkur','Akash','Scorpio','Suprith',now(),342000000,976);
insert into show_room values(17,'Deluxe Wheel','Bhopal','Bhadri','Baleno','Jivan',now(),176000600,341);
insert into show_room values(18,'Premier wheels','Tamilnadu','Joseph','Creta','Nani',now(),1870000300,617);
insert into show_room values(19,'Lavish wheels','Hyderabad','chaitanya','Alto','Ankit',now(),194000000,302);
insert into show_room values(20,'Dream cars','Banashankari','Anil','Nano','Sagar',now(),2380000000,593);


alter table show_room modify column cost bigint; 
alter table show_room modify column id bigint; 
alter table show_room modify column orders bigint;

create database market_info;

use market_info;

create table market_info(id int not null, tempos int not null, items varchar(15) unique, owners varchar(15) unique,
natives varchar(20), shopkeeper varchar(19), visited timestamp, customers bigint, orders int, waterSupply boolean, 
constraint cust_chk check(customers>200), constraint order_chk check(orders>5));

desc market_info;

select*from market_info;

insert into market_info values(1,244,'flowers','Bharati','Mysore','Samantha',now(),4723,123,1);
insert into market_info values(2,654,'leaves','AArati','Mandya','Ashwini',now(),5364,675,1);
insert into market_info values(3,87,'fruits','Sneha','Tunkur','Krishav',now(),8766,54,0);
insert into market_info values(4,987,'bananas','Nikhita','Bidar','Daksh',now(),678987,53,0);
insert into market_info values(5,213,'threads','Poorna','Belagavi','Mourya',now(),4413,78,1);
insert into market_info values(6,134,'vegitables','Megha','Chitradurga','bhagya',now(),6754,21,0);
insert into market_info values(7,1877,'chairs','Paddu','Chanpatna','Pavan',now(),86754,98,1);
insert into market_info values(8,178,'rice bags','Amruta','Rajasthan','shwetha',now(),97554,786,0);
insert into market_info values(9,676,'chemicals','Mithali','Jharkhand','Chetan',now(),12344,797,0);
insert into market_info values(10,987,'oils','Manju','Kolar','Sagar',now(),55465,67,1);
insert into market_info values(11,2188,'books','Kiran','Himalaya','paapu',now(),546,5454,0);
insert into market_info values(12,977,'salt bags','Shivu','Culcutta','Ajay',now(),8765,56,0);
insert into market_info values(13,8676,'cotton bags','Anmol','Maharashtra','Raghu',now(),547,67,1);
insert into market_info values(14,677,'sandals','manu','Madavara','Sanjay',now(),976,765,1);
insert into market_info values(15,565,'clothes','Niha','Kerala','bhuvan',now(),8765,1543,0);
insert into market_info values(16,7667,'stationaries','Rahul','Kanyakumari','hithesh',now(),214,3232,1);
insert into market_info values(17,564,'cosmetics','Varsha','Mysore','karunya',now(),2345,355,0);
insert into market_info values(18,133,'bangles','Sindhu','Mysore','Akshay',now(),1134,644,0);
insert into market_info values(19,1233,'jewelleries','kamala','Mysore','Aditya',now(),8976,121,1);
insert into market_info values(20,2444,'gadgets','Karthik','Mysore','Nithali',now(),6755,5435,0);


alter table market_info modify column tempos bigint; 
alter table market_info modify column id bigint; 
alter table market_info modify column customers int; 
alter table market_info modify column orders bigint;

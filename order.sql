create database order_details;

use order_details;

create table order_details(id int,o_name varchar(20),o_cost bigint,o_id int primary key,created_at timestamp,created_by varchar(20),
modified_at timestamp,modified_by varchar(20));
 
insert into order_details values(1,'pizza',245,4,'2023-09-05 04:50:00','ashwini',now(),'sanjeevini');
insert into order_details values(2,'momos',215,5,'2024-12-07 06:30:00','poorna',now(),'sneha');
insert into order_details values(3,'burger',216,6,'2024-11-18 05:00:01','amrutha',now(),'nikhita');
insert into order_details values(4,'sandwich',217,7,'2024-06-29 06:30:00','keerti',now(),'bharati');
insert into order_details values(5,'french fries',8,218,'2023-06-01 06:54:00','varsha',now(),'aarati');


select*from order_details;

create database payment_details;

use payment_details;

create table payment_details(id int,p_price bigint,p_id int primary key,p_order_id  int,foreign key(p_order_id) references order_details(o_id),
payment_status varchar(20),created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20));

insert into payment_details values(1,230000,2,4,'successful','2022-09-05 04:50:00','megha',now(),'sukanya');
insert into payment_details values(2,220000,3,5,'pending','2022-12-07 06:30:00','poorna',now(),'sneha');
insert into payment_details values(3,240000,4,6,'successful','2022-11-18 05:00:01','amrutha',now(),'nikhita');
insert into payment_details values(4,250000,5,7,'successful','2022-06-29 06:30:00','keerti',now(),'bharati');
insert into payment_details values(5,260000,6,7,'pending','2022-06-01 06:54:00','varsha',now(),'aarati');


select*from payment_details;

create database restaurant_details;

use restaurant_details;

create table restaurant_details(id int,r_name varchar(20),r_id int primary key,r_loc varchar(20),r_order_id  int,
foreign key(r_order_id) references order_details(o_id),ratings int,r_payment_id int,foreign key(r_payment_id) references order_details(o_id),
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20));

insert into restaurant_details values(1,'aayodhya',214,'dharwad',4,5,4,'2024-09-05 04:50:00','ashwini',now(),'sanjeevini');
insert into restaurant_details values(2,'megharaj',342,'bijapur',5,6,4,'2024-09-05 04:50:00','ananya',now(),'tanaya');
insert into restaurant_details values(3,'venkatesh',245,'gulbarga',6,7,4,'2024-09-05 04:50:00','dhanya',now(),'diksha');
insert into restaurant_details values(4,'rameshwaram',543,'banglore',7,8,4,'2024-09-05 04:50:00','niha',now(),'sindhu');
insert into restaurant_details values(5,'meghadarshini',748,'hubli',4,9,4,'2024-09-05 04:50:00','nikhita',now(),'namita');

select*from restaurant_details;

create database deliver_details;

use deliver_details;

create table deliver_details(id int,d_person_name varchar(20),mode_of_payment enum('online','offline'),d_restaurant_id int,r_loc varchar(20),
d_order_id int,foreign key(d_order_id) references order_details(o_id),
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20));

insert into deliver_details values(1,'kiran','online',201,'rajajinagar',4,'2024-08-09 04:50:00','ashwini',now(),'sanjeevini');
insert into deliver_details values(2,'karthik','offline',202,'malleshwaram',4,'2024-04-03 04:50:00','kavita',now(),'aarohi');
insert into deliver_details values(3,'bhuvan','online',203,'mahalakshmi layout',4,'2024-05-06 04:50:00','krishav',now(),'suprith');
insert into deliver_details values(4,'shivu','offline',204,'sumanagar',4,'2024-08-08 04:50:00','jivan',now(),'aditi');
insert into deliver_details values(5,'girish','offline',205,'chandra layout',4,'2024-09-05 04:50:00','kshema',now(),'nitya');



select*from deliver_details;



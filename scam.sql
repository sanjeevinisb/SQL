CREATE DATABASE scam_info;

USE scam_info; 

create table scam_info(id int,scammers int,scammer_name varchar(30),registered_date varchar(15),scam_type varchar(30),
location varchar(20),pincode int, area varchar(20),victims int);

DESC scam_info;

alter table scam_info add column victims_no int, add column decision_date varchar(15), add column cost double;

alter table scam_info rename column area to scam_area;
alter table scam_info rename column victims_no to victims_codeNo;
alter table scam_info rename column pincode to pin_code;
alter table scam_info rename column cost to cost_expended;
alter table scam_info rename column scammer_name to scammers_name;


alter table scam_info drop scam_area;

alter table scam_info modify column pin_code bigint,modify column registered_date int;
Insert into scam_info values(1,23,'pradeep',13,'robery','jainagar',563241,4,435,'24/03/2023',45623.657);
Insert into scam_info values(2,654,'chouhan',14,'murder','vijaynagar',563352,54,478,'24/01/2024',675.7);
Insert into scam_info values(3,35,'kamal',15,'kidnap','sujatha',563564,53,123,'18/07/2023',2435.657);
Insert into scam_info values(4,32,'sudeep',25,'Fraud','vijaypur',562453,13,8765,'24/11/2023',5346.657);
Insert into scam_info values(5,76,'lokesh',28,'cybercrime','MG road',560076,32,864,'03/05/2023',97565.657);
Insert into scam_info values(6,34,'darshan',23,'assault','rajajinagar',563540,47,234,'13/08/2023',86576.657);
Insert into scam_info values(7,13,'akshay',17,'robery','peenya',563200,6,4635,'29/08/2024',87647.657);
Insert into scam_info values(8,25,'adeesh',11,'murder','yelahanka',500487,8,987,'01/07/2024',57345.657);
Insert into scam_info values(9,24,'kumar',03,'property crimes','mejestic',513552,8,8765,'23/07/2023',43754.657);
Insert into scam_info values(10,21,'praveen',06,'kidnap','bommanahalli',563001,3,4689,'30/08/2024',12324.657);

UPDATE scam_info set scammers=35 where id=4;
UPDATE scam_info set pin_code=562162 where location='sujatha';
UPDATE scam_info set victims=35 where victims=8;


delete from scam_info where id=7;
delete from scam_info where victims=35;

select*from scam_info where victims in(54,3,47,13,4);
select*from scam_info limit 4;
select*from scam_info where registered_date not in(13,14,6,23,26,27,28);

select*from scam_info;
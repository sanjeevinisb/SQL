create database RTO;

use RTO;
 
create table RTO_LLR_INFO(id int,llr_id varchar(20) PRIMARY KEY,applicant_name VARCHAR(20),
date_of_birth DATE,address VARCHAR(30),city VARCHAR(30),state VARCHAR(50),
phone_number bigint(15),email VARCHAR(100),date_of_application DATE,status VARCHAR(20));

insert into RTO_LLR_INFO values(1,'LLRKA0345618764932','sanjeevini','2001-10-19','kalyan nagar','dharwad','karnataka',7795876788,'sanjeevini@gmail.com','2024-01-12','applied');
insert into RTO_LLR_INFO values(2,'LLRKA0782390417836','nkhita','2001-05-08','bilgi','bagalkot','karnataka',9902595821,'nikhita@gmail.com','2024-02-22','applied');
insert into RTO_LLR_INFO values(3,'LLRKA0342289563190','sneha','2002-06-09','hungund','bijapur','karnataka',8088563251,'sneha@gmail.com','2023-11-14','applied');
insert into RTO_LLR_INFO values(4,'LLRKA1236788453452','neha','2003-06-17','athani','belagavi','karnataka',7657832459,'neha@gmail.com','2024-11-10','applied');
insert into RTO_LLR_INFO values(5,'LLRKA9087342178945','preeti','2002-05-12','basveshwarnagar','haveri','karnataka',9901452678,'preeti@gmail.com','2024-10-21','applied');
insert into RTO_LLR_INFO values(6,'LLRKA9867342178054','kriti','2001-02-11','ilkal','bagalkot','karnataka',9908763214,'kriti@gmail.com','2024-12-01','applied');
insert into RTO_LLR_INFO values(7,'LLRKA0869542678456','ananya','2000-05-07','kamlanagar','gulbarga','karnataka',7411119852,'ananya@gmail.com','2024-01-30','applied');
insert into RTO_LLR_INFO values(8,'LLRKA9078432156743','krishav','2003-01-27','sharanbasweshwarnagar','vijaynagar','karnataka',8808654321,'krishav@gmail.com','2024-01-02','applied');
insert into RTO_LLR_INFO values(9,'LLRKA7089453721670','kiran','2003-07-17','lakshmeshwar','gadag','karnataka',9483996314,'kiran@gmail.com','2024-12-10','applied');
insert into RTO_LLR_INFO values(10,'LLRKA9087432256990','aditi','2000-02-05','basvakalyan','bidar','karnataka',7785673421,'aditi@gmail.com','2024-08-09','applied');
insert into RTO_LLR_INFO values(11,'LLRKA0627468921350','priya','2001-08-29','surapur','yadgiri','karnataka',8088576432,'priya@gmail.com','2024-04-08','applied');
insert into RTO_LLR_INFO values(12,'LLRKA0895673267821','suman','1999-01-13','keshavnagar','raichur','karnataka',9483245673,'suman@gmail.com','2024-05-19','applied');
insert into RTO_LLR_INFO values(13,'LLRKA0996054218906','kshama','2002-12-18','jayanagar','mysore','karnataka',9535423589,'kshama@gmail.com','2024-07-20','applied');
insert into RTO_LLR_INFO values(14,'LLRKA0875326732167','apeksha','2000-11-16','gangavati','koppal','karnataka',8890652317,'apeksha@gmail.com','2024-05-17','applied');
insert into RTO_LLR_INFO values(15,'LLRKA0876431864323','aaradhya','1998-10-09','hirur','chitradurga','karnataka',9901352689,'aaradhya@gmail.com','2024-04-15','applied');
insert into RTO_LLR_INFO values(16,'LLRKA0853125790427','anika','2000-03-15','harihar','davangere','karnataka',8076413489,'anika@gmail.com','2024-03-28','applied');
insert into RTO_LLR_INFO values(17,'LLRKA9008765792354','akshata','1995-06-10','shirguppa','bellary','karnataka',7411119834,'akshata@gmail.com','2024-01-01','applied');
insert into RTO_LLR_INFO values(18,'LLRKA0876548890567','nisha','1996-02-14','bhatkal','manglore','karnataka',9902565321,'nisha@gmail.com','2024-12-06','applied');
insert into RTO_LLR_INFO values(19,'LLRKA9045231768954','niharika','2003-06-18','dandeli','karwar','karnataka',9476258912,'niharika@gmail.com','2024-07-29','applied');
insert into RTO_LLR_INFO values(20,'LLRKA0890543562134','sanika','1999-03-28','maddur','mandya','karnataka',9903456632,'sanika@gmail.com','2024-07-14','applied');

insert into RTO_LLR_INFO(llr_id,applicant_name) values('LLRKA0342289563190','sneha')on duplicate key update applicant_name='prakruthi';

replace into RTO_LLR_INFO(llr_id,applicant_name,address,city) value('LLRKA0875326732167','sanjana','manvi','raichur');

select*from RTO_LLR_INFO;

create database RTO_LLR_TEST_INFO;

use RTO_LLR_TEST_INFO;

CREATE TABLE RTO_LLR_TEST_INFO(id int,p_name varchar(20),age int,test_id int primary key,address varchar(40),phn_no bigint,
join_date date,llr_id varchar(20),p_status varchar(20),department varchar(50),foreign key(llr_id)references RTO_LLR_INFO(llr_id));

desc RTO_LLR_TEST_INFO;

INSERT INTO RTO_LLR_TEST_INFO VALUES(1,'sanjeevini',21,300,'raamnagar',6560750873,'2023-01-01','LLRKA0345618764932','active','bsc');
INSERT INTO RTO_LLR_TEST_INFO VALUES(2,'anita',22,301,'kormangla',8760750873,'2023-01-24','LLRKA0890543562134','active','police');
INSERT INTO RTO_LLR_TEST_INFO VALUES(3,'nikhita',23,302,'rajajinagar',7760950873,'2023-01-23','LLRKA0345618764932','active','bba');
INSERT INTO RTO_LLR_TEST_INFO VALUES(4,'varshini',24,303,'indiranagar',7760753873,'2023-9-01','LLRKA0345618764932','active','bcom');
INSERT INTO RTO_LLR_TEST_INFO VALUES(5,'sanskriti',25,400,'jayanagar',7760780873,'2023-03-01','LLRKA0890543562134','active','mba');
INSERT INTO RTO_LLR_TEST_INFO VALUES(6,'deepa',26,305,'dharwad',7764750873,'2023-02-01','LLRKA0345618764932','active','nursing');
INSERT INTO RTO_LLR_TEST_INFO VALUES(7,'karuna',27,306,'raichur',7710750073,'2023-04-01','LLRKA0345618764932','active','mbbs');
INSERT INTO RTO_LLR_TEST_INFO VALUES(8,'nitali',28,307,'gadag',7760750273,'2023-05-01','LLRKA0345618764932','active','dform');
INSERT INTO RTO_LLR_TEST_INFO VALUES(9,'kriti',29,308,'koppal',7534750873,'2023-01-03','LLRKA0345618764932','active','sales');
INSERT INTO RTO_LLR_TEST_INFO VALUES(10,'ananya',19,309,'nandi',7350450871,'2023-01-04','LLRKA0345618764932','active','engg');
INSERT INTO RTO_LLR_TEST_INFO VALUES(11,'deepti',18,310,'vijaynagar',7350450872,'2024-10-04','LLRKA0345618764932','active','horticulture');
INSERT INTO RTO_LLR_TEST_INFO VALUES(12,'anusha',17,311,'banashankarinagar',7350450834,'2024-09-04','LLRKA0345618764932','active','agriculture');
INSERT INTO RTO_LLR_TEST_INFO VALUES(13,'aditi',31,312,'bellary',7350450878,'2024-01-02','LLRKA0345618764932','active','business');
INSERT INTO RTO_LLR_TEST_INFO VALUES(14,'manisha',32,313,'bidar',8088934562,'2024-01-01','LLRKA0345618764932','active','marketing');
INSERT INTO RTO_LLR_TEST_INFO VALUES(15,'tanaya',33,314,'hospet',9905467321,'2024-01-09','LLRKA0345618764932','active','designing');
INSERT INTO RTO_LLR_TEST_INFO VALUES(16,'dhanya',34,315,'kundgol',7411223427,'2024-01-03','LLRKA0345618764932','active','ba');
INSERT INTO RTO_LLR_TEST_INFO VALUES(17,'sneha',35,316,'manglore',9902598432,'2024-05-04','LLRKA0345618764932','active','msc');
INSERT INTO RTO_LLR_TEST_INFO VALUES(18,'priya',36,317,'chikkmanglore',7705678543,'2024-04-04','LLRKA0345618764932','active','bca');
INSERT INTO RTO_LLR_TEST_INFO VALUES(19,'preeti',37,318,'sirsi',7350450563,'2024-03-04','LLRKA0345618764932','active','marketing');
INSERT INTO RTO_LLR_TEST_INFO VALUES(20,'kriya',38,319,'dandeli',7350452373,'2024-01-04','LLRKA0345618764932','active','ca');

insert into RTO_LLR_TEST_INFO(test_id,address) values(306,'raichur')on duplicate key update address='madhya pradesh';

replace into RTO_LLR_TEST_INFO(test_id,llr_id,address,p_name) value(508,'LLRKA0345618764932','hebbal','krishav');

select*from RTO_LLR_TEST_INFO;

USE RTO; 

CREATE TABLE RTO_DRIVING_LICENCE_INFO(id int,DL_id varchar(20) primary key,fullName varchar(50),DL_test_id int,
issue_date date,expiry_date date,address varchar(30),state varchar(100),DL_LLR_id varchar(30),country varchar(50),
foreign key(DL_LLR_id)references RTO_LLR_INFO(llr_id),foreign key(DL_test_id)references RTO_LLR_TEST_INFO(test_id));

desc RTO_DRIVING_LICENCE_INFO;

INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(1,'2345','arun',300,'2020-01-10','2025-01-09','banglore','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(2,'2145','girish',301,'2021-01-10','2025-02-09','dharwad','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(3,'2245','sahana',302,'2022-01-10','2025-03-09','haliyal','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(4,'22235','pratik',303,'2020-02-10','2025-04-09','bagalkot','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(5,'2545','keerti',304,'2020-03-10','2025-05-09','ballari','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(6,'2645','samantha',305,'2020-04-10','2025-06-09','chikkballapur','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(7,'2745','anish',306,'2020-05-20','2025-07-09','davangere','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(8,'2845','sagar',307,'2020-06-10','2025-08-09','tumkur','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(19,'2945','samiksha',308,'2020-07-10','2025-09-09','hassan','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(10,'3645','aditya',309,'2020-08-10','2025-10-09','hoshalli','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(11,'3346','anmol',310,'2020-09-10','2025-01-11','magadi','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(12,'3349','nikhil',311,'2021-07-10','2025-01-12','haveri','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(13,'3345','anup',312,'2021-06-10','2025-01-13','kalaburagi','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(14,'3355','kruti',313,'2021-05-10','2025-01-14','kodagu','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(15,'3385','aman',314,'2021-04-10','2025-01-15','mandya','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(16,'6545','anuja',315,'2021-03-10','2025-01-16','raichur','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(17,'4345','akshata',316,'2021-02-10','2025-01-17','bidar','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(18,'4145','diksha',317,'2021-01-10','2025-01-18','udupi','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(19,'3445','divya',318,'2020-01-30','2025-01-09','mysur','karnataka','LLRKA0345618764932','india');
INSERT INTO RTO_DRIVING_LICENCE_INFO VALUES(20,'8745','sakshi',319,'2022-01-10','2025-01-29','vijayapur','karnataka','LLRKA0345618764932','india');

insert into RTO_DRIVING_LICENCE_INFO(DL_id,fullName) values('2245','sahana')on duplicate key update fullName='anuradha';

replace into RTO_DRIVING_LICENCE_INFO(issue_date,DL_id) value('2024-10-19','2145');

select*from RTO_DRIVING_LICENCE_INFO;


CREATE TABLE RTO_DRIVING_LICENCE_TEST_INFO(id int,DL_id varchar(30),test_date date PRIMARY KEY,DL_test_id int,
DL_LLR_id varchar(20),foreign key(DL_LLR_id)references RTO_LLR_INFO(llr_id),
foreign key(DL_test_id)references RTO_LLR_TEST_INFO(test_id));

INSERT INTO RTO_DRIVING_LICENCE_TEST_INFO VALUES(1,'2345','2020-10-12',319,'LLRKA0345618764932');
INSERT INTO RTO_DRIVING_LICENCE_TEST_INFO VALUES(2,'2445','2020-12-18',319,'LLRKA0345618764932');
INSERT INTO RTO_DRIVING_LICENCE_TEST_INFO VALUES(3,'2545','2020-09-02',319,'LLRKA0345618764932');
INSERT INTO RTO_DRIVING_LICENCE_TEST_INFO VALUES(4,'2645','2020-08-22',319,'LLRKA0345618764932');
INSERT INTO RTO_DRIVING_LICENCE_TEST_INFO VALUES(5,'2745','2020-07-10',319,'LLRKA0345618764932');
INSERT INTO RTO_DRIVING_LICENCE_TEST_INFO VALUES(6,'2845','2020-06-07',319,'LLRKA0345618764932');
INSERT INTO RTO_DRIVING_LICENCE_TEST_INFO VALUES(7,'2945','2020-05-19',319,'LLRKA0345618764932');
INSERT INTO RTO_DRIVING_LICENCE_TEST_INFO VALUES(8,'2145','2020-04-28',319,'LLRKA0345618764932');
INSERT INTO RTO_DRIVING_LICENCE_TEST_INFO VALUES(9,'2125','2020-03-04',319,'LLRKA0345618764932');
INSERT INTO RTO_DRIVING_LICENCE_TEST_INFO VALUES(10,'2565','2020-05-17',319,'LLRKA0345618764932');

insert into RTO_DRIVING_LICENCE_TEST_INFO(test_date,DL_test_id) values('2020-09-02',319)on duplicate key update test_date='2024-10-18';

replace into RTO_DRIVING_LICENCE_TEST_INFO(test_date,DL_test_id) value('2024-03-29',300);

select*from RTO_DRIVING_LICENCE_TEST_INFO;
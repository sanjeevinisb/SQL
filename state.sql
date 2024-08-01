CREATE DATABASE state_details;

USE state_details;

CREATE TABLE state_details(id int,s_name varchar(20),s_pincode int,s_famous_food varchar(20),s_famous_place varchar(20),s_famous_temple varchar(20));

DESC state_details;

ALTER TABLE state_details ADD COLUMN s_festival_name varchar(20);
ALTER TABLE state_details ADD COLUMN s_famous_museum varchar(20);
ALTER TABLE state_details ADD COLUMN s_famous_hills varchar(30);
ALTER TABLE state_details ADD COLUMN s_waterfalls varchar(20);
ALTER TABLE state_details ADD COLUMN s_capital varchar(30);

ALTER TABLE state_details RENAME COLUMN s_famous_food TO s_famous_dishes;
ALTER TABLE state_details RENAME COLUMN s_famous_hills TO s_mountains_count;
ALTER TABLE state_details RENAME COLUMN s_festival_name TO s_festival_title;
ALTER TABLE state_details RENAME COLUMN s_name TO s_title;
ALTER TABLE state_details RENAME COLUMN s_waterfalls TO s_rivers;


ALTER TABLE state_details MODIFY COLUMN s_mountains_count int;
ALTER TABLE state_details MODIFY COLUMN s_pincode bigint;



INSERT INTO state_details VALUES(1,'Karnataka',560009,'Dosa','Hampi','Murdeshwara','Ugadi','Kempegowda',4,'jogfalls','Bengaluru');
INSERT INTO state_details VALUES(2,'Kerala',676123,'Malabar Parota','Munnar','Ananthapadmanabha','Onam','Indo-Portuguese',2,'Periyar','Thiruvananthapuram');
INSERT INTO state_details VALUES(3,'TamilNadu',600001,'Idli','Ooty','Coimbatore','Pongal','Government',1,'Kumbakkarai','Chennai');
INSERT INTO state_details VALUES(4,'Goa',403514,'Kismur','Beach','Mahadev','GoaCarnival','Chitra',3,'Dudhsagar','Panaji');
INSERT INTO state_details VALUES(5,'AP',676123,'Parota','Tirupathi','Thalpagiri Ranganadha','Vinayaka Chaturthi','PrivateTour',5,'Talakona','Amaravati');
INSERT INTO state_details VALUES(6,'Bihar',765423,'Puri','Munnar','LaxmiDevi','Deepavali','Indo-Portuguese',7,'Periyar','Litti');
INSERT INTO state_details VALUES(7,'Gujarat',987654,'Samosa','Munnar','Somnath Temple','Navratri ','Indo-Portuguese',6,'Periyar','Patna');
INSERT INTO state_details VALUES(8,'HP',237689,'Kajju','Munnar','Maa Chintpurni ','Gochi ','Indo-Portuguese',8,'Periyar','Shimla');
INSERT INTO state_details VALUES(9,'MP',976542,'VadaPav','Munnar','Gopal','Lokrang ','Indo-Portuguese',9,'Periyar','Bhupal');
INSERT INTO state_details VALUES(10,'Maharashtra',887650,'Roti','Munnar','Trimbakeshwar','Makar Sankranti','Indo-Portuguese',5,'Periyar','Mumbai');
INSERT INTO state_details VALUES(11,'Rajasthan',122222,'Savjii','Munnar','Birla','Mewar','RajastanMuseum',10,'Periyar','Jaipur');
INSERT INTO state_details VALUES(12,'Manipur',400011,'Pallav','Munnar','Mahabali','Yaosang','StateMuseum',19,'Periyar','Impal');
INSERT INTO state_details VALUES(13,'Assam',400033,'Luchi','Munnar','Kamakhya','Rajini Gabra','Don Bosco',12,'Periyar','Dispur');
INSERT INTO state_details VALUES(14,'Hariyana',987666,'Khichri.','Munnar','Agroha','Guga Navmi','Hariyana',11,'Periyar','Chandigarh');
INSERT INTO state_details VALUES(15,'Punjab',654320,'Chapati','Munnar','GoldenTEmple','Baisakhi','Punjab',14,'Periyar','Chandigarh');
INSERT INTO state_details VALUES(16,'WestBengal',672233,'Methigajjar','Munnar','Tarapith','Durga Puja','WBMuseum',13,'Periyar','Kolkata');
INSERT INTO state_details VALUES(17,'Uttarakhand',610000,'Rabri','Munnar','Kedarnath','Onam','Indo-Portuguese',17,'Periyar','Dehradun');
INSERT INTO state_details VALUES(18,'Odisha',751012,'Khichede','Bhubaneshwar','Jagannath Temple ','Ratha Yatra','Odisha State ',16,'Sanaghagara','Bhubaneswar');
INSERT INTO state_details VALUES(19,'Meghalaya',793001,'Nakham Bitchi','Exotic','ISKCON','Shad Sukra.','Don Bosco',15,'Elephant','Shillong');
INSERT INTO state_details VALUES(20,'Jharkhand',834002,' Dhuska','BabaBaidyanath','PahariMandir','Sarhul','StateMuseum',20,'DassamFalls','Ranchi');

UPDATE state_details SET s_rivers = 'kaveri' WHERE id = 9;
UPDATE state_details SET s_rivers = 'krishna' WHERE id = 2;
UPDATE state_details SET s_rivers = 'sharavati' WHERE id = 10;
UPDATE state_details SET s_rivers = 'tungabhadra' WHERE id = 5;
UPDATE state_details SET s_rivers = 'kali' WHERE id = 8;
UPDATE state_details SET s_rivers = 'penna' WHERE id = 3;
UPDATE state_details SET s_rivers = 'bhima' WHERE id = 7;
UPDATE state_details SET s_rivers = 'malaprabha' WHERE id = 1;
UPDATE state_details SET s_rivers = 'bhadra' WHERE id = 4;
UPDATE state_details SET s_rivers = 'ghataprabha' WHERE id = 6;

DELETE FROM state_details WHERE s_famous_dishes = 'Malabar Parota' AND id = 2;
DELETE FROM state_details WHERE s_title = 'Gujarat' AND s_festival_title = 'Navratri';
DELETE FROM state_details WHERE s_mountains_count = 'Coorg' AND id = 4;

SELECT * FROM state_details where s_festival_title = 'Onam' AND s_title = 'Kerala';
SELECT * FROM state_details where id = 5 or  s_rivers = 'Talakona';
SELECT * FROM state_details where id in(8,3,5,10);
SELECT * FROM state_details where id  not in(3,5,9,8);

SELECT * FROM state_details;






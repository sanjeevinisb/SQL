CREATE DATABASE BANK;

USE BANK; 

CREATE TABLE bank_details(id int,b_name varchar(20),b_account_no bigint);

DESC bank_details;

ALTER TABLE bank_details ADD COLUMN b_ifsc_code varchar(20);
ALTER TABLE bank_details ADD COLUMN b_account_holder varchar(20);
ALTER TABLE bank_details ADD COLUMN b_branch_name varchar(20);
ALTER TABLE bank_details ADD COLUMN b_email_id varchar(20);
ALTER TABLE bank_details ADD COLUMN b_micr_code bigint;
ALTER TABLE bank_details ADD COLUMN b_pin_code int;
ALTER TABLE bank_details ADD COLUMN b_kyc_identifier boolean;

ALTER TABLE bank_details RENAME COLUMN b_name TO b_address;
ALTER TABLE bank_details RENAME COLUMN b_account_no TO m_account_code;
ALTER TABLE bank_details RENAME COLUMN b_account_holder TO b_holder_name;
ALTER TABLE bank_details RENAME COLUMN b_branch_name TO b_branch_address;
ALTER TABLE bank_details RENAME COLUMN b_pin_code TO b_zip_no;

INSERT INTO bank_details VALUES(1,'canara bank',12062010025904,'CNRB0011204','sanjeevini','dharawad','sanjeevini@gmail.com',580015309,580003,0);
INSERT INTO bank_details VALUES(2,'state bank',13400927806901,'SBIB0025673','ashwini','hubli','ashwini@gmail.com',670083421,580020,1);
INSERT INTO bank_details VALUES(3,'karnataka bank',45200560813019,'KVGB8004231','nikhita','bagalkot','nikhita@gmail.com',590015021,587101,0);
INSERT INTO bank_details VALUES(4,'axis bank',14005600231704,'AB009215678','sneha','bijapur','sneha@gmail.com',653001289,586101,1);
INSERT INTO bank_details VALUES(5,'baroda bank',19003400501346,'BOB2001308','bharati','haveri','bharati@gmail.com',802001343,581110,1);
INSERT INTO bank_details VALUES(6,'central bank',10027003784905,'CB0023890','aarati','gadag','aarati@gmail.com',5800124084,582101,1);
INSERT INTO bank_details VALUES(7,'union bank',12004009875004,'UB0089268','poorna','banglore','poorna@gmail.com',567000234,530068,1);
INSERT INTO bank_details VALUES(8,'public sector bank',13900480940580,'PSB9003278','niha','davangere','niha@gmail.com',680034761,577001,0);
INSERT INTO bank_details VALUES(9,'overseas bank',18003600370408,'OB9003489','varsha','shimoga','varsha@gmail.com',540013468,577201,0);
INSERT INTO bank_details VALUES(10,'punjab and sind bank',138005627004780,'PSB0094389','amruta','hospet','amrutagmail.com',380026780,583201,1);


UPDATE bank_details SET b_zip_no = 583101 WHERE id = 9;
UPDATE bank_details SET b_zip_no = 585101 WHERE id = 2;
UPDATE bank_details SET b_zip_no = 584101 WHERE id = 10;
UPDATE bank_details SET b_zip_no = 583231 WHERE id = 5;
UPDATE bank_details SET b_zip_no = 581118 WHERE id = 8;
UPDATE bank_details SET b_zip_no = 582116 WHERE id = 3;
UPDATE bank_details SET b_zip_no = 581113 WHERE id = 7;
UPDATE bank_details SET b_zip_no = 585104 WHERE id = 1;
UPDATE bank_details SET b_zip_no = 580004 WHERE id = 4;
UPDATE bank_details SET b_zip_no = 585412 WHERE id = 6;

DELETE FROM bank_details WHERE b_address = 'amruta' AND id = 10;
DELETE FROM bank_details WHERE m_account_code = 12004009875004 AND b_holder_name = 'poorna';
DELETE FROM bank_details WHERE b_branch_address = 'hubli' AND id = 2;

SELECT * FROM bank_details where m_account_code = 19003400501346 AND b_zip_no = 581110;
SELECT * FROM bank_details where id = 5 or  b_branch_address = 'shimoga';
SELECT * FROM bank_details where id in(8,3,5);
SELECT * FROM bank_details where id  not in(3,5,9);


SELECT * FROM bank_details;





CREATE DATABASE MOVIE;

USE MOVIE;

CREATE TABLE movie_info(id int,m_name varchar(20),m_ticket_no int);

DESC movie_info;

ALTER TABLE movie_info ADD COLUMN m_producer_name varchar(20);
ALTER TABLE movie_info ADD COLUMN m_director_name varchar(20);
ALTER TABLE movie_info ADD COLUMN m_actor_name varchar(20);
ALTER TABLE movie_info ADD COLUMN m_actress_name varchar(20);
ALTER TABLE movie_info ADD COLUMN m_budget bigint;
ALTER TABLE movie_info ADD COLUMN m_release_date bigint;
ALTER TABLE movie_info ADD COLUMN m_releasing_day boolean;

ALTER TABLE movie_info RENAME COLUMN m_name TO m_title;
ALTER TABLE movie_info RENAME COLUMN m_actor_name TO m_hero_details;
ALTER TABLE movie_info RENAME COLUMN m_actress_name TO m_heroine_details;
ALTER TABLE movie_info RENAME COLUMN m_budget TO m_budget_collection;
ALTER TABLE movie_info RENAME COLUMN m_ticket_no TO m_online_ticket;

INSERT INTO movie_info VALUES(1,'chhichhore',245,'sajid','nitesh','sushant','shradha',5000000,6-9-2019,1);
INSERT INTO movie_info VALUES(2,'baaghi',187,'sajid','sabbir','tiger shroff','shradha',3500000,10-06-2024,0);
INSERT INTO movie_info VALUES(3,'yuva',987,'vijay','santosh','yuvarajkumar','saptami',8000000,18-07-2008,0);
INSERT INTO movie_info VALUES(4,'ranna',768,'chandru','nanda','sudeep','rachita',5000000,4-06-2015,1);
INSERT INTO movie_info VALUES(5,'kaatera',987,'rockline','tarun','darshan','aaradana',4000000,29-12-2023,0);
INSERT INTO movie_info VALUES(6,'sitarama',532,'aswani','hanu','dulquer','mrunal',2500000,5-08-2022,1);
INSERT INTO movie_info VALUES(7,'kgf',223,'vijay','neel','yash','shrinidhi',8000000,21-12-2018,1);
INSERT INTO movie_info VALUES(8,'shershaah',966,'hiroo','vishnu','malhotra','kiara',900000,12-08-2021,1);
INSERT INTO movie_info VALUES(9,'sivaji',222,'m s guhan','s shankar','rajnikant','shriya',8900000,18-02-2022,0);
INSERT INTO movie_info VALUES(10,'mocktail',111,'nagaraj','milana','krishna','amruta',100000,17-05-2022,1);


UPDATE movie_info SET m_title = 'hridayam' WHERE id = 9;
UPDATE movie_info SET m_title = 'eega' WHERE id = 2;
UPDATE movie_info SET m_title = 'atarangi' WHERE id = 10;
UPDATE movie_info SET m_title = 'raaz' WHERE id = 5;
UPDATE movie_info SET m_title = 'bajarangi' WHERE id = 8;
UPDATE movie_info SET m_title = 'rajkumar' WHERE id = 3;
UPDATE movie_info SET m_title = 'maanikya' WHERE id = 7;
UPDATE movie_info SET m_title = 'arambham' WHERE id = 1;
UPDATE movie_info SET m_title = 'ratsasan' WHERE id = 4;
UPDATE movie_info SET m_title = 'hi nana' WHERE id = 6;

DELETE FROM movie_info WHERE m_title = 'hi nana' AND id = 9;
DELETE FROM movie_info WHERE m_hero_details = 'sushant' AND m_director_name = 'nitesh';
DELETE FROM movie_info WHERE m_producer_name = 'vijay' AND id = 7;

SELECT * FROM movie_info where m_title = 'rajkumar' AND m_director_name = 'santosh';
SELECT * FROM movie_info where id = 5 or m_director_name = 'sajid';
SELECT * FROM movie_info where id in(3,2,8);
SELECT * FROM movie_info where id  not in(3,5,9);


SELECT * FROM movie_info;





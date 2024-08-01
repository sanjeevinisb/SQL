create database employees;

use employees;

create table employees(id int not null,e_id int primary key,e_first_name varchar(20),e_last_name varchar(20) unique,
no_of_employee int,e_hire_date datetime);
 
 alter table employees add constraint no_of_employee_chk check(no_of_employee_chk>4);
 
 alter table employees drop constraint no_of_employee_chk;
 
desc employees;

select*from employees;

insert into employees values(1,24,'Sanjeevini','Bujurke',8,'2024-06-23 07:30:00');
insert into employees values(2,25,'Nikhita','Suryavanshi',9,'2024-07-25 06:30:20');
insert into employees values(3,26,'Sneha','Patil',5,'2024-08-12 06:20:50');
insert into employees values(4,28,'Bharati','Budihal',7,'2024-09-22 08:40:30');
insert into employees values(5,27,'Poorna','hanamkhond',6,'2024-05-19 05:30:10');

alter table employees add column  e_id int not null;
select*from employees;
alter table employees drop primary key;

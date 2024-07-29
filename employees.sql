create database employees;

use employees;

create table employees(id int not null,e_id int primary key,e_first_name varchar(20),e_last_name varchar(20),
e_email varchar(20) unique,e_hire_date datetime,constraint e_id_chk check(e_id>20));

desc employees;

select*from employees;

insert into employees values(1,24,'Sanjeevini','Bujurke','sanjeevini@gmail.com','2024-06-23 07:30:00');
insert into employees values(2,25,'Nikhita','Suryavanshi','nikhita@gmail.com','2024-07-25 06:30:20');
insert into employees values(3,26,'Sneha','Patil','sneha@gmail.com','2024-08-12 06:20:50');
insert into employees values(4,28,'Bharati','Budihal','bharati@gmail.com','2024-09-22 08:40:30');
insert into employees values(5,27,'Poorna','hanamkhond','anu@gmail.com','2024-05-19 05:30:10');

alter table employees add constraint e_id__pk primary key(e_id);
alter table employees drop primary key

create database first_database;

create table users
(
user_id int NOT NULL unique,
first_name varchar(255)NOT NULL,
last_name varchar(255),
email_id varchar(255),
city varchar(255),
phone varchar(255) NOT NULL
);


desc users;

select * from users;

insert into users values(10, 'Claudia', 'Sand', 'Claudia.Sand@hotmail.com', 'Hanover', '+1 555 234 5678');
insert into users values(20, 'Julio', 'Chavez', 'chavezj317@gmail.com', 'Savannah', '+1 555 890 9898');
insert into users values(15, 'Neil', 'Parks', 'neil_parks82@hotmail.com', 'Pleasanton', '+1 555 567 3456');

insert into users values(20, 'Gina', 'Ortiz', 'Gina_Ortiz68@hotmail.com', 'Hampstead', '+1 555 963 8521');
insert into users values(19, 'Gina', 'Ortiz', 'Gina_Ortiz68@hotmail.com', 'Hampstead', '+1 555 963 8521');

select * from users;
desc users;

insert into users values(11, NULL, 'Chawanda','raj_chawanda@hotmail.com','Springfield','+1 555 211 2563');
insert into users values(11, 'Raj', 'Chawanda','raj_chawanda@hotmail.com','Springfield',NULL);
insert into users values(NULL, 'Raj', 'Chawanda','raj_chawanda@hotmail.com','Springfield','+1 555 211 2563');

insert into users values(11, 'Raj', 'Chawanda','raj_chawanda@hotmail.com','Springfield','+1 555 211 2563');

insert into users values(31, 'Marcia', NULL,NULL,'Springfield','+1 555 234 8765');

create table users1
(
user_id int,
first_name varchar(255)NOT NULL,
last_name varchar(255),
email_id varchar(255),
city varchar(255),
phone varchar(255) NOT NULL,
primary key(user_id)
);

desc users1;

select * from users1;

insert into users1 values(10, 'Claudia', 'Sand', 'Claudia.Sand@hotmail.com', 'Hanover', '+1 555 234 5678');
insert into users1 values(20, 'Julio', 'Chavez', 'chavezj317@gmail.com', 'Savannah', '+1 555 890 9898');
insert into users1 values(15, 'Neil', 'Parks', 'neil_parks82@hotmail.com', 'Pleasanton', '+1 555 567 3456');

insert into users1 values(20, 'Gina', 'Ortiz', 'Gina_Ortiz68@hotmail.com', 'Hampstead', '+1 555 963 8521');
insert into users1 values(NULL, 'Gina', 'Ortiz', 'Gina_Ortiz68@hotmail.com', 'Hampstead', '+1 555 963 8521');

insert into users1 values(19, 'Gina', 'Ortiz', 'Gina_Ortiz68@hotmail.com', 'Hampstead', '+1 555 963 8521');
insert into users1 values(11, 'Raj', 'Chawanda','raj_chawanda@hotmail.com','Springfield','+1 555 211 2563');
insert into users1 values(31, 'Marcia', 'Lin','Marcia_Lin89@hotmail.com','Springfield','+1 555 234 8765');

select * from users1;
select last_name,city,phone from users1;
select user_id,first_name,city from users1;

select user_id,first_name,city
from users1
where city = 'Springfield';

select user_id,first_name,last_name
from users1
where city = 'Springfield';

select * from users1
where city = 'Springfield';

select * from users1
where city = 'Calgary';

desc users1;

alter table users1
modify column email_id varchar(255) unique;

insert into users1 values(33,'Chen','Lin','Marcia_Lin89@hotmail.com','Moab','+1 555 111 0357');
insert into users1 values(33,'Chen','Lin','Chen.LinUK@gmail.com','Moab','+1 555 111 0357');

 select * from users1;
 
 insert into users1 values(34, 'Charles', 'Lin', 'chlin@qenel.com','Moab','+1 555 111 0357');
 
 alter table users1
 modify column phone varchar(255) unique;
 
 delete from users1
 where user_id = 34;
 
 select * from users1;
 
 alter table users1
 modify column phone varchar(255) unique;
 
 desc users1;
 
 insert into users1 values(34, 'Charles', 'Lin', 'chlin@qenel.com','Moab','+1 555 111 0357');
 
 show create table users;
 desc users1;
 drop index phone on users1;
 desc users1;
 
 insert into users1 values(34, 'Charles', 'Lin', 'chlin@qenel.com','Moab','+1 555 111 0357');
 
 select * from users1;
 
 update users1
 set phone = '+1 555 111 9999'
 where user_id = 34;
 
 select * from users1;
 
 update users1
 set email_id = 'Gina@qenel.com'
 where first_name ='Gina';
 
 create table users1_summary As 
 select user_id, first_name, city from users1; 
 
 show tables;
 
 desc users1_summary;
 
 select * from users1_summary;
 
 alter table users1_summary
 add primary key(user_id);
 
 desc users1_summary;
 
 
 
 
 
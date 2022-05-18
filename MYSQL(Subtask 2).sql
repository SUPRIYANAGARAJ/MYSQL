create table users2
(
user_id int,
first_name varchar(255)NOT NULL,
last_name varchar(255),
email_id varchar(255),
city varchar(255),
phone varchar(255) NOT NULL,
primary key(user_id)
);

select * from users2;
desc users2;

insert into users2 values(10, 'Claudia', 'Sand', 'Claudia.Sand@hotmail.com', 'Hanover', '+1 555 234 5678');
insert into users2 values(20, 'Julio', 'Chavez', 'chavezj317@gmail.com', 'Savannah', '+1 555 890 9898');
insert into users2 values(15, 'Neil', 'Parks', 'neil_parks82@hotmail.com', 'Pleasanton', '+1 555 567 3456');
insert into users2 values(19, 'Gina', 'Ortiz', 'Gina_Ortiz68@hotmail.com', 'Hampstead', '+1 555 963 8521');
insert into users2 values(11, 'Raj', 'Chawanda','raj_chawanda@hotmail.com','Springfield','+1 555 211 2563');
insert into users2 values(31, 'Marcia', 'Lin','Marcia_Lin89@hotmail.com','Springfield','+1 555 234 8765');
insert into users2 values(33,'Chen','Lin','Marcia_Lin89@hotmail.com','Moab','+1 555 111 0357');
insert into users2 values(34, 'Charles', 'Lin', 'chlin@qenel.com','Moab','+1 555 111 0357');
insert into users2 values(35, 'Chantal',NULL,'Chantal_Sands62@hotmail.com','Pittsburgh','+1 555 432 1098');
insert into users2 values(21, 'Sunny', 'Pearl', 'Sunny.pearl@hotmail.com', 'Singa', '+1 555 134 8978');

select first_name from users2;

select first_name,last_name,city,user_id from users2
where city = 'Moab';

select first_name,last_name,city,user_id from users2
where last_name = 'Lin' and city = 'Moab';

select first_name,last_name,city,user_id from users2
where last_name = 'Lin' or city = 'Moab';

select first_name,last_name,city,user_id from users2
where last_name != 'Lin' ;

select first_name,last_name,city,user_id
from users2
where first_name like 'Charles';

select first_name,last_name,city,user_id
from users2
where first_name like 'C%';

select first_name,last_name,city,user_id
from users2
where first_name like 'c%';

select * from users2;

select first_name,last_name,city,user_id
from users2
where first_name like 'ch%';

select first_name,last_name,city,user_id
from users2
where first_name like 'c%n%';

select first_name,last_name,city,user_id
from users2
where city like '%d';

select first_name,last_name,city,user_id
from users2
where first_name not like 'c%';

select first_name,last_name,city,user_id
from users2
where city = 'Springfield'
or city = 'Pittsburgh'
or city = 'Hempstead';

select first_name,last_name,city,user_id
from users2
where city in('Springfield','Pittsburgh','Hempstead');


select first_name,last_name,city,user_id
from users2
where city not in('Springfield','Pittsburgh','Hempstead')
and first_name like 'ch%';

create table gold_users2
(uid int primary key,
end_date date not null,
points float);

desc gold_users2;

insert into gold_users2 values(10, '2020-11-01', 342);
insert into gold_users2 values(11, '2019-10-03', 241.2);
insert into gold_users2 values(15, '2019-12-01', 93);
insert into gold_users2 values(19, '2023-01-13', 13.8);
insert into gold_users2 values(21, '2021-04-29', 279.1);

select * from gold_users2;

select uid from gold_users2;

select first_name,last_name,user_id from users2
where user_id in (select uid from gold_users2);

select first_name,last_name,user_id from users2
where user_id in (select uid, end_date from gold_users2);

select * from users2
where user_id not in (select user_id from gold_users2);


alter table gold_users2
add constraint fk_uid
foreign key (uid) references users2(user_id);
                  
desc gold_users2;
select * from gold_users2;
select * from users2;

show create table gold_users2;

select user_id from users2;

insert into gold_users2 values(33, '2020-05-28',201.3);

select * from gold_users2;

select * from gold_users2 where points > 150;
select * from gold_users2 where points < 150;

select * from gold_users2
where points < 93;

select * from gold_users2
where points <= 93;

select * from gold_users2
where points >= 93;

select * from gold_users2
where points <= 93;

select * from gold_users2
where points >= 93
and points < 250;

select * from gold_users2
where points between 93 and 241.2;

select * from gold_users2
where points between 93 
and 241.2;

select * from gold_users2
where end_date < '2021-01-01';

select * from gold_users2
where end_date < '2020-11-01';

select * from gold_users2
where end_date <= '2020-11-01';

select * from gold_users2
where end_date >= '2020-11-01';

select * from gold_users2
where end_date between '2020-05-28' and '2021-04-29';

select curdate();

select * from gold_users2
where end_date < curdate();

select * from gold_users2
where end_date >= curdate();

select * from gold_users2;

select * from gold_users2 order by points;

select * from gold_users2 order by points desc;

select * from gold_users2 order by points desc
limit 3;

select * from gold_users2 order by points desc
limit 1;

select * from gold_users2
where end_date <= curdate()
order by end_date;

select * from gold_users2
where end_date <= curdate()
order by end_date desc;

insert into gold_users2 values (34, '2020-05-28', 132.9);

select * from gold_users2
order by end_date;

select * from gold_users2
order by end_date, points;

select * from gold_users2
order by end_date, points desc;

select * from gold_users2
order by end_date desc, points desc;

select * from users2
order by last_name, first_name;











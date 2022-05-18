use first_database;

select * from gold_users2;

create procedure get_gold_users2()
BEGIN
select uid from gold_users2;
END

Delimiter //
Create procedure get_gold_users()
Begin
select uid from gold_users2;
End
//
Delimiter ;

show procedure status where db = 'first_database';
call `first_database`. `get_gold_users`();
call get_gold_users();

Delimiter //
Drop procedure if exists get_gold_users;
create procedure get_gold_users()
Begin
Declare userid int;
set userid = 10;
select * from gold_users2
where uid = userid;
End
//
Delimiter ;

call get_gold_users();

Delimiter //
Drop procedure if exists get_gold_users;
create procedure get_gold_users(IN userid int)
Begin
select * from gold_users2
where uid = userid;
End
//
Delimiter ;

call get_gold_users(10);
call get_gold_users(33);

Delimiter //
Drop procedure if exists create_new_user;
create procedure create_new_user(IN arg_user_id int,
                                 IN arg_first_name varchar(255),
                                 IN arg_last_name varchar(255),
                                 IN arg_email_id varchar(255),
                                 IN arg_city varchar(255),
                                 IN arg_phone varchar(255))
Begin
Insert into users2 values(arg_user_id, arg_first_name, arg_last_name, arg_email_id, arg_city, arg_phone);
End //
Delimiter ;

show procedure status where db = 'first_database';

call create_new_user(100,'Rick','Tallon','Rick_Tallon65@hotmail.com','Trenton','+1 555 222 2501');

select * from users2;

call create_new_user(100,'Renee','Bauer','renee_bauer70@hotmail.com','Pullman','+1 555 110 4321');

Delimiter //
Drop procedure if exists create_new_user;
create procedure create_new_user(IN arg_user_id int,
                                 IN arg_first_name varchar(255),
                                 IN arg_last_name varchar(255),
                                 IN arg_email_id varchar(255),
                                 IN arg_city varchar(255),
                                 IN arg_phone varchar(255))
Begin
If Not Exists (select user_id from users2 where user_id = arg_user_id) Then
	Insert into users2 values(arg_user_id, arg_first_name, arg_last_name, arg_email_id, arg_city, arg_phone);
else
	Select 'User ID already In use. Please select another one';
End if;
End //
Delimiter ;

call create_new_user(100, 'Renee', 'Bauer', 'renee_bauer70@hotmail.com', 'Pullman', '+1 555 110 4321');

call create_new_user(101,'Renee','Bauer','renee_bauer70@hotmail.com','Pullman','+1 555 110 4321');
select * from users2;

Delimiter //
Drop procedure if exists create_new_user;
create procedure create_new_user(IN arg_user_id int,
                                 IN arg_first_name varchar(255),
                                 IN arg_last_name varchar(255),
                                 IN arg_email_id varchar(255),
                                 IN arg_city varchar(255),
                                 IN arg_phone varchar(255),
                                 In arg_is_gold_users bool,
                                 In arg_is_diamond_users bool
                                 )
Begin
If Not Exists (select user_id from users2 where user_id = arg_user_id) Then
	Insert into users2 values(arg_user_id, arg_first_name, arg_last_name, arg_email_id, arg_city, arg_phone);
End If;
If(arg_is_gold_users) Then
	insert into gold_users2 values(arg_user_id, date_add(CURDATE(), INTERVAL 1 YEAR), 0);
	IF (arg_is_diamond_users) Then
		insert into diamond_users values(arg_user_id, 100);
	End If;
End If;
If (arg_is_diamond_users) Then
   If not Exists (select uid from gold_users2 where uid = arg_user_id) Then
       select 'All Diamond users need to be Gold users.';
	End If;
End If;
End // 
Delimiter ;

call create_new_user(666, 'Nikki','Flores',
'nikki_flores77@hotmail.com', 'Savannah',
'+1 555 990 9321', false, true);
call create_new_user(777, 'Rob','Lawrence',
'rob_lawrence80@hotmail.com', 'Charleston',
'+1 555 990 9322', false, false);



call create_new_user(889, 'Zachay','Macsen',
'zacky_macsen80@hotmail.com','Santa Fe',
'+1 555 990 9323', true, true);
select * from users2;
select * from gold_users2;
select * from diamond_users;

select * from users2;

use first_database;
create Trigger autoEnrollGold
After Insert
On Users2
for Each row
Insert into gold_users2(uid,end_date,points)
         values(new .user_id,Date_Add(Curdate(), Interval 1 Year), 0);
         
Show triggers from first_database;

insert into users2 values (40, 'Alen', 'Alford', 'Alan_Alford63@hotmail.com','Wisconsin','+1 555 211 2562');

select * from users2;
select * from gold_users2;

drop trigger autoEnrollGold;
show triggers from first_database;
create table diamond_users2 (uid int primary key,
                            wallet_balance int,
                            foreign key(uid) references gold_users2(uid));
desc diamond_users2;

Delimiter //
create trigger enrollDiamondUsersToGold
Before insert
on diamond_users2
for each row
if exists (select user_id from users2 where user_id = new.uid) Then
if not exists (select uid from gold_users2 where uid = new.uid) Then
insert into gold_users2 values (new.uid, Date_Add(curdate(), Interval 1 year), 0);
End if;
End if;
//
Delimiter ;
show triggers from first_database;

select * from users2;

select * from gold_users2;

select * from diamond_users2;
use first_database;

insert into diamond_users2 (uid, wallet_balance) values (31, 10);

select * from diamond_users2;

select * from gold_users2;

insert into diamond_users2 (uid, wallet_balance) values (11, 72);
select * from diamond_users2;

insert into diamond_users2 (uid, wallet_balance) values (30, 72);

show create table diamond_users2;

alter table diamond_users2
Drop foreign key diamond_users2_ibfk_1;

alter table diamond_users2
add constraint diamond_fk_uid
foreign key (uid) references gold_users2 (uid)
on delete cascade;

show create table diamond_users2;

select * from diamond_users2;
insert into diamond_users2 values (19, 40);

select * from diamond_users2;

delete from gold_users2 where uid = 19;
select * from gold_users2;
select * from diamond_users2;

update gold_users2
set uid = 19
where uid = 31;

Alter table diamond_users2
Drop foreign key diamond_fk_uid;

alter table diamond_users2
add constraint diamond_fk_uid
foreign key (uid) references gold_users2 (uid)
on delete cascade
on update cascade;

select * from diamond_users2;

update gold_users2
set uid = 19
where uid = 31;

select * from gold_users2;
select * from diamond_users2;










                            





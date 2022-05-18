select * from users2;

select * from gold_users2;

select first_name,last_name,city
from users2
where user_id in (select uid from gold_users2);

select first_name,last_name,city
from users2
where user_id in (select uid from gold_users2
                   where end_date <= curdate());

select * from users2, gold_users2
where user_id = uid;

select first_name,last_name,city,points,end_date from users2, gold_users2
where user_id = uid;

select first_name,last_name,city,points,end_date
from users2, gold_users2;

select first_name,last_name,city,points,end_date 
from users2, gold_users2
where user_id = uid
and end_date <= curdate();

select u.first_name,u.last_name,u.city,g.points,g.end_date 
from users2 u, gold_users2 g
where u.user_id = g.uid
and g.end_date <= curdate();

select u.first_name,u.last_name,u.city,g.points,g.end_date 
from users2 u join gold_users2 g
on u.user_id = g.uid
where g.end_date <= curdate();

select u.first_name,u.last_name,u.city,g.points,g.end_date 
from users2 u join gold_users2 g
on u.user_id = g.uid;

select u.first_name,u.last_name,u.city,g.points,g.end_date 
from users2 u inner join gold_users2 g
on u.user_id = g.uid;

select u.first_name,u.last_name,u.city,g.points,g.end_date 
from users2 u left join gold_users2 g
on u.user_id = g.uid;

select g.points,g.end_date,u.first_name,u.last_name,u.city
from  gold_users2 g  left join users2 u
on u.user_id = g.uid;

select g.points,g.end_date,u.first_name,u.last_name,u.city
from  gold_users2 g  right join users2 u
on u.user_id = g.uid;

select u.first_name,u.last_name,u.city,g.points,g.end_date 
from gold_users2 g right join  users2 u
on u.user_id = g.uid
order by g.points desc;



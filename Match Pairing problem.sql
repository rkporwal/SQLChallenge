create database sqlproblems

create table teams(Country varchar(50))

insert into teams values ('India')
insert into teams values ('Srilanka')
insert into teams values ('Bangladesh')
insert into teams values ('Pakistan')

select * from teams

with teamscte as
(
select
1 as ID
,case when Country='India' then 1
when Country='Srilanka' then 2
when Country='Bangladesh' then 3
when Country='Pakistan' then 4 end as teamno 
,Country
from teams

)

select t1.Country,t2.Country
from teamscte t1
inner join  teamscte t2
on t1.ID=t2.ID
where t1.teamno<>t2.teamno and t1.teamno<t2.teamno
order by t1.teamno asc
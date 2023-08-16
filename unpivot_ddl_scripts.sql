-- DDL scripts for sql problem set (used on postgres)
drop table if exists crosstabdata
create table crosstabdata
(
"1" varchar(10)
,"2" varchar(10)
,"3" varchar(10)
,"4" varchar(10)
)

insert into crosstabdata values ('12','34','56','90')

select * from crosstabdata



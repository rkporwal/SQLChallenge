-- SQL problem to find student grading details by combining data from two deifferent tables

create table students(
	"Student ID" varchar(10)
	,"Name" varchar(30)
	,"total Marks" int);
	
select * from students;	

insert into students values
('SID1','Brady Bush',59)
,('SID2','Cora Herring',21)
,('SID3','Shelby Preston',96)
,('SID4','Theodore Allison',56)
,('SID5','Azalia Ball',18)
,('SID6','Mariko Mclean',33)
,('SID7','Reed Stark',21)
,('SID8','Clark Campbell',80)
,('SID9','Gage Summers',14)
,('SID10','Xyla Dominguez',41)

select * from students

create table Grades(MinMarks int,MaxMarks int,Grade varchar(2))

select * from Grades;
insert into Grades values
(90,100,'A+')
,(80,89,'A')
,(70,79,'B+')
,(50,69,'B')
,(40,49,'C')
,(0,39,'D')

select * from Grades

select s."Student ID",s."Name",g."grade"
from students s
join Grades g 
on (s."total Marks">=g.MinMarks and s."total Marks"<=g.MaxMarks)
order by s."Student ID"


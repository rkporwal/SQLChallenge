/*
Challenge: Identifying Students with Consecutive Absences

You are provided with a table named "Attendance" that contains the following columns:
StudentID (an integer representing the student's unique identifier).
ClassDate (a date representing the date of a class).
IsPresent (a boolean value where 1 indicates presence, and 0 indicates absence).
Write a SQL query to identify students who have missed more than three consecutive classes.
In other words, find students who have consecutive absences of three or more classes in a row.

Your query should return the StudentID of these students.
This challenge will test your SQL skills in using window functions to analyze consecutive data patterns in a table

*/

use sqlproblems

CREATE TABLE Attendance (
    StudentID INT,
    ClassDate DATE,
    IsPresent BIT
);

truncate table Attendance

INSERT INTO Attendance (StudentID, ClassDate, IsPresent) VALUES
(1,'1-Sep-23',1),
(1,'2-Sep-23',1),
(1,'3-Sep-23',0),
(1,'4-Sep-23',0),
(1,'5-Sep-23',0),
(2,'1-Sep-23',1),
(2,'2-Sep-23',0),
(2,'3-Sep-23',0),
(2,'4-Sep-23',1),
(3,'1-Sep-23',1),
(3,'2-Sep-23',1),
(3,'3-Sep-23',1),
(3,'4-Sep-23',1),
(4,'10-Sep-23',1),
(4,'11-Sep-23',0),
(4,'12-Sep-23',0),
(4,'13-Sep-23',0)

select * from Attendance

--- solution for above problem set

with cte as
(
select * 
,ROW_NUMBER() OVER (ORDER BY StudentID  asc) as rn
,DATEADD(dd,-(ROW_NUMBER() OVER (ORDER BY StudentID  asc)),ClassDate) as flag
from Attendance
where IsPresent=0
)


select c.StudentID,ClassDate,Ispresent
from cte c
join 
(select flag ,count(*) as count
from cte
group by flag
having count(*)=3
) t on c.flag=t.flag

use sqlproblems

CREATE TABLE Attendance (
    StudentID INT,
    ClassDate DATE,
    IsPresent BIT
);


INSERT INTO Attendance (StudentID, ClassDate, IsPresent) VALUES
(1, '2023-09-01', 1),
(1, '2023-09-02', 0),
(1, '2023-09-03', 0),
(1, '2023-09-04', 0),
(1, '2023-09-05', 1),
(1, '2023-09-06', 0),
(1, '2023-09-07', 0),
(1, '2023-09-08', 0),
(1, '2023-09-09', 1),
(2, '2023-09-05', 0),
(2, '2023-09-06', 1),
(2, '2023-09-07', 0),
(2, '2023-09-08', 0),
(2, '2023-09-09', 0),
(3, '2023-09-07', 1),
(3, '2023-09-08', 1),
(3, '2023-09-09', 1)

select * from Attendance

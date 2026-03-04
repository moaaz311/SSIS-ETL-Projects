use ITI

select* from Department

use testDB
TRUNCATE TABLE TestDB.dbo.Department;

INSERT INTO testDB.dbo.Department
SELECT *
FROM ITI.dbo.Department;

CREATE TABLE Department (
    Dept_Id INT PRIMARY KEY,
    Dept_Name NVARCHAR(50) NULL,
    Dept_Desc NVARCHAR(100) NULL,
    Dept_Location NVARCHAR(50) NULL,
    Dept_Manager INT NULL,
    Manager_hiredate DATE NULL
);
TRUNCATE TABLE Department;

INSERT INTO Department (
    Dept_Id,
    Dept_Name,
    Dept_Desc,
    Dept_Location,
    Dept_Manager,
    Manager_hiredate
)
SELECT
    Dept_Id,
    Dept_Name,
    Dept_Desc,
    Dept_Location,
    Dept_Manager,
    Manager_hiredate
FROM ITI.dbo.Department;

select*from Department


select s.St_id, s.St_Fname
      ,s.St_Lname
      ,s.St_Address
      ,s.St_Age
      ,s.Dept_Id
      ,s.St_super ,sc.Grade ,sc.Crs_id
from student s left join Stud_course sc
on s.St_id=sc.St_id



select s.St_id, 
s.St_Fname +" "+s.St_Lname as FullName
      ,s.St_Address
      ,s.St_Age
      ,s.Dept_Id
      ,s.St_super ,sc.Grade ,sc.Crs_id
from student s left join Stud_course sc
on s.St_id=sc.St_id


----4
use ITI

select sc.*,c.Crs_Name,c.Crs_Duration from Stud_Course sc  join Course c
on c.Crs_Id=sc.Crs_Id

select*from Course
select* from Stud_Course
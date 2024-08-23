 create database study;

 use study;
 
 CREATE TABLE student (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    EnrollmentDate DATE
);

CREATE TABLE teacher (
    TeacherID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    HireDate DATE,
    Subject NVARCHAR(50)
);

-- Insert 10 records into the student table
INSERT INTO student (FirstName, LastName, DateOfBirth, EnrollmentDate) VALUES 
('John', 'Doe', '2005-01-15', '2021-08-20'),
('Jane', 'Smith', '2006-02-25', '2021-08-20'),
('Michael', 'Johnson', '2004-03-10', '2021-08-20'),
('Emily', 'Davis', '2005-04-05', '2021-08-20'),
('Daniel', 'Brown', '2006-05-15', '2021-08-20'),
('Sophia', 'Wilson', '2005-06-20', '2021-08-20'),
('Matthew', 'Jones', '2004-07-25', '2021-08-20'),
('Olivia', 'Garcia', '2006-08-30', '2021-08-20'),
('Joshua', 'Martinez', '2005-09-15', '2021-08-20'),
('Isabella', 'Rodriguez', '2004-10-05', '2021-08-20');

-- Insert 10 records into the teacher table
INSERT INTO teacher (FirstName, LastName, HireDate, Subject) VALUES 
('Robert', 'Miller', '2010-08-15', 'Math'),
('Linda', 'Anderson', '2012-09-10', 'Science'),
('William', 'Thomas', '2015-07-20', 'English'),
('Patricia', 'Jackson', '2009-06-25', 'History'),
('Charles', 'White', '2011-05-30', 'Physics'),
('Barbara', 'Harris', '2013-04-10', 'Chemistry'),
('James', 'Clark', '2014-03-05', 'Biology'),
('Susan', 'Lewis', '2008-02-15', 'Geography'),
('Joseph', 'Walker', '2016-01-10', 'Physical Education'),
('Karen', 'Hall', '2017-11-20', 'Art');


select *  from student;

select * from teacher;

-- Alter

-- changing the database

alter database study modify name = studyy;

execute sp_renamedb 'study', 'studyy'; 

-- changing table name

execute sp_rename 'student','new_student';

select * from new_student;

-- I want to add the coulmn in the  table

alter table new_student add student_city varchar(50);

-- SO the new column will be always null as the none value is added so i have to update the alue

update new_student set student_city = 'Gujrat' where StudentID = 1;
select * from new_student;

update new_student set student_city = 'LHR' where StudentID = 2;
select * from new_student;

-- Removing the column

alter table new_student drop column student_city;

alter table new_student alter column LastName nvarchar(50);



-- With Constraints
-- Null

alter table new_Student alter column LastName nvarchar(50) not null;
-- i have changed the constraint of the LastName

alter table new_Student alter column LastName nvarchar(50) null;

select *  from new_Student;

-- UNIQUE  (Not duplicate value)

alter table new_student add unique(FirstName);

--Primary Key

alter table new_student alter column  DateOfBirth Date not null;

alter table new_student add primary key(FirstName); 


-- Check

alter table teacher add check(TeacherID>=6);


-- Default value adding

alter table teacher add default 'ALi' for LastName;

select * from teacher;

alter table teacher add teacher_City nvarchar(20);

select * from teacher;

alter table teacher add default 18 for teacher_city;

select * from teacher;	
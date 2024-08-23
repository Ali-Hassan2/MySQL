create database alter11;

use alter11;

create table student(
roll_no int primary key,
name varchar(25) not null,
age int not null,
email varchar(220) not null,
phone BIGINT not null
);

insert into student(roll_no, name, age,email, phone) values
(1,'Ali Hassan', 18, 'alihassan26032004@gmail.com',03318888),
(2,'Shoaib Waris', 26, 'shoaibwaris1998@gmail.com',03313288)
,(3,'Ahmed Raza', 28, 'ahmedraza77@gmail.com',033999988)
,(4,'Ehsan Ali', 78, 'ehsanali23@gmail.com',03318388)
,(5,'Ali Asghar', 68, 'aliasghar@gmail.com',0331899)
,(6,'Sameer Hassan', 98, 'SameerHassan67@gmail.com',03311238)
,(7,'Aoun Hassan', 9998, 'aounhassan667@gmail.com',033333333);

select * from student;

--changing the name of the database

alter database alter11 modify name = alter12;

-- Now i will change the of the databaseby the store procedure 
execute sp_renamedb 'alter12', 'alter13';
-- changing the name of the name of the table by the stored procedure
execute sp_rename 'student','new_Student';

--adding the column

alter table new_student add new_Col varchar(50);

-- 1. Write a SQL statement that displays all the information about all salespeople.

-- Sample table: salesman

 -- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--        5001 | James Hoog | New York |       0.15
--        5002 | Nail Knite | Paris    |       0.13
--        5005 | Pit Alex   | London   |       0.11
--        5006 | Mc Lyon    | Paris    |       0.14
--        5007 | Paul Adam  | Rome     |       0.13
--        5003 | Lauson Hen | San Jose |       0.12


create database q1;

use q1;

create table saleperson(
	salesman_id int primary key,
	name varchar(255) null,
	city varchar(255) null,
	commission float not null
);

insert into saleperson(salesman_id, name, city, commission)values(5001,'James Hong', 'New York', 0.15),(5002,'Nail Knite', 'Paris', 0.13),
(5005,'Pit Alex', 'London', 0.11),(5006,'Mc Lyon', 'Paris', 0.14),(5007,'Paul Adam', 'Rome', 0.13),(5003,'Lauson Hen', 'San Jose', 0.12);

select * from saleperson;


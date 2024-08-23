--10. From the following table, write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id.  

--Sample table: customer

 --customer_id |   cust_name    |    city    | grade | salesman_id 
-------------+----------------+------------+-------+-------------
 --       3002 | Nick Rimando   | New York   |   100 |        5001
 --       3007 | Brad Davis     | New York   |   200 |        5001
 --       3005 | Graham Zusi    | California |   200 |        5002
 --       3008 | Julian Green   | London     |   300 |        5002
 --       3004 | Fabian Johnson | Paris      |   300 |        5006
 --       3009 | Geoff Cameron  | Berlin     |   100 |        5003
 --       3003 | Jozy Altidor   | Moscow     |   200 |        5007
 --       3001 | Brad Guzan     | London     |       |        5005


create database q10;

use q10;

create table customer(

customer_id int primary key,
cust_name varchar(255) not null,
city varchar(255) null,
grade int null,
saleman_id int not null
);

insert into customer(customer_id, cust_name, city, grade,saleman_id) values(3002,'Nick Rimadno','New york',100, 5001),(3007,'Brad Davis','New York',200, 5001),
(3005,'Graham Zusi','California',200, 5002),(3008,'Julian Green','London',300, 5002),(3004,'Fabian Johnson','Paris',300, 50016),(3009,'Geoff','Berlin',100, 5003),
(3003,'Jozy Altidor','Moscow',200, 5007);

select customer_id, cust_name, city, grade, saleman_id from customer where grade = 200;

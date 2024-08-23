--11. From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt.  

--Sample table: orders

--ord_no      purch_amt   ord_date    customer_id  salesman_id
----------  ----------  ----------  -----------  -----------
--70001       150.5       2012-10-05  3005         5002
--70009       270.65      2012-09-10  3001         5005
--70002       65.26       2012-10-05  3002         5001
--70004       110.5       2012-08-17  3009         5003
--70007       948.5       2012-09-10  3005         5002
--70005       2400.6      2012-07-27  3007         5001
--70008       5760        2012-09-10  3002         5001
--70010       1983.43     2012-10-10  3004         5006
--70003       2480.4      2012-10-10  3009         5003
--70012       250.45      2012-06-27  3008         5002
--70011       75.29       2012-08-17  3003         5007
--70013       3045.6      2012-04-25  3002         5001

create database q11;

use q11;

create table orders(

	order_no int primary key,
	purch_amt float not null,
	order_date date null,
	customer_id	int null,
	saleman_id int not null,
);

insert into orders(order_no, purch_amt, order_date, customer_id,saleman_id) values(70001,150.5,'2012-10-05',3005, 5002),(70009,270.65,'2012-09-10',3001, 5005),
(70002,65.5,'2012-10-05',30052, 5001),(70004,110.5,'2012-08-17',3009, 5003),(70007,948.5,'2012-09-10',3005, 5002),(70005,2400.5,'2012-07-27',3007, 5001),
(70008,5760,'2012-09-15',3002, 5001),(70010,1983.5,'2012-10-10',3004, 5006),(70003,2480.5,'2012-06-05',3009, 5003),(70012,250.5,'2012-06-05',3005, 5002),
(70011,75.5,'2012-10-17',3003, 5007), (70013,3045.6,'2012-04-25',3002, 5001);

select order_no, order_date,purch_amt from orders where saleman_id = 5001;
--1. From the following table, write a SQL query to locate the details of customers with grade values above 100. Return customer_id, cust_name, city, grade, and salesman_id. 

--Sample table: customer

 --customer_id |   cust_name    |    city    | grade | salesman_id 
-------------+----------------+------------+-------+-------------
   --     3002 | Nick Rimando   | New York   |   100 |        5001
   --     3007 | Brad Davis     | New York   |   200 |        5001
   --     3005 | Graham Zusi    | California |   200 |        5002
   --     3008 | Julian Green   | London     |   300 |        5002
   --     3004 | Fabian Johnson | Paris      |   300 |        5006
   --     3009 | Geoff Cameron  | Berlin     |   100 |        5003
   --     3003 | Jozy Altidor   | Moscow     |   200 |        5007
   --     3001 | Brad Guzan     | London     |       |        5005


CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    cust_name TEXT,
    city TEXT,
    grade INTEGER,
    salesman_id INTEGER
);

-- Insert the values into the customers table
INSERT INTO customers (customer_id, cust_name, city, grade, salesman_id) VALUES
    (3002, 'Nick Rimando', 'New York', 100, 5001),
    (3007, 'Brad Davis', 'New York', 200, 5001),
    (3005, 'Graham Zusi', 'California', 200, 5002),
    (3008, 'Julian Green', 'London', 300, 5002),
    (3004, 'Fabian Johnson', 'Paris', 300, 5006),
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007),
    (3001, 'Brad Guzan', 'London', NULL, 5005);


select * from customers where grade > 100;
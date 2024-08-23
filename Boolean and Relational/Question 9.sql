-- 9. From the following table, write a SQL query to find all
--orders that meet the following conditions. Exclude combinations of 
--order date equal to '2012-08-17' or customer ID greater than 3005 and purchase amount less than 1000.

-- Sample table : orders

-- ord_no      purch_amt   ord_date    customer_id  salesman_id
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


CREATE TABLE orders4 (
    ord_no INTEGER PRIMARY KEY,
    purch_amt FLOAT,
    ord_date DATE,
    customer_id INTEGER,
    salesman_id INTEGER
);

-- Insert the values into the orders table
INSERT INTO orders4 (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
    (70001, 150.5, '2012-10-05', 3005, 5002),
    (70009, 270.65, '2012-09-10', 3001, 5005),
    (70002, 65.26, '2012-10-05', 3002, 5001),
    (70004, 110.5, '2012-08-17', 3009, 5003),
    (70007, 948.5, '2012-09-10', 3005, 5002),
    (70005, 2400.6, '2012-07-27', 3007, 5001),
    (70008, 5760, '2012-09-10', 3002, 5001),
    (70010, 1983.43, '2012-10-10', 3004, 5006),
    (70003, 2480.4, '2012-10-10', 3009, 5003),
    (70012, 250.45, '2012-06-27', 3008, 5002),
    (70011, 75.29, '2012-08-17', 3003, 5007),
    (70013, 3045.6, '2012-04-25', 3002, 5001);

	select * from orders4 where not ((ord_date = '2012-08-17' or customer_id > 3005) and purch_amt < 1000);
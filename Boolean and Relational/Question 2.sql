--2. From the following table, write a SQL query to find all the customers in ‘New York’ city
--who have a grade value above 100. Return customer_id, cust_name, city, grade, and salesman_id.

CREATE TABLE customer2 (
    customer_id INTEGER PRIMARY KEY,
    cust_name varchar(200),
    city varchar(200),
    grade INTEGER,
    salesman_id INTEGER
);

-- Insert the values into the customers table
INSERT INTO customer2 (customer_id, cust_name, city, grade, salesman_id) VALUES
    (3002, 'Nick Rimando', 'New York', 100, 5001),
    (3007, 'Brad Davis', 'New York', 200, 5001),
    (3005, 'Graham Zusi', 'California', 200, 5002),
    (3008, 'Julian Green', 'London', 300, 5002),
    (3004, 'Fabian Johnson', 'Paris', 300, 5006),
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007),
    (3001, 'Brad Guzan', 'London', NULL, 5005);

	select * from customer2 where city= 'New York' and grade > 100;
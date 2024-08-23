--4. From the following table, write a SQL query to find customers
--who are either from the city 'New York' or who do not have a grade greater than 100.
--Return customer_id, cust_name, city, grade, and salesman_id.  

CREATE TABLE customer4 (
    customer_id INTEGER PRIMARY KEY,
    cust_name varchar(200),
    city varchar(200),
    grade INTEGER,
    salesman_id INTEGER
);

-- Insert the values into the customers table
INSERT INTO customer4 (customer_id, cust_name, city, grade, salesman_id) VALUES
    (3002, 'Nick Rimando', 'New York', 100, 5001),
    (3007, 'Brad Davis', 'New York', 200, 5001),
    (3005, 'Graham Zusi', 'California', 200, 5002),
    (3008, 'Julian Green', 'London', 300, 5002),
    (3004, 'Fabian Johnson', 'Paris', 300, 5006),
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007),
    (3001, 'Brad Guzan', 'London', NULL, 5005);

	select * from customer4 where city= 'New York' or not grade > 10;

--5. From the following table, write a SQL query
--to identify customers who do not belong to the city of 'New York' or have a grade value that exceeds 100. 
--Return customer_id, cust_name, city, grade, and salesman_id.  

CREATE TABLE customer5 (
    customer_id INTEGER PRIMARY KEY,
    cust_name varchar(200),
    city varchar(200),
    grade INTEGER,
    salesman_id INTEGER
);

-- Insert the values into the customers table
INSERT INTO customer5 (customer_id, cust_name, city, grade, salesman_id) VALUES
    (3002, 'Nick Rimando', 'New York', 100, 5001),
    (3007, 'Brad Davis', 'New York', 200, 5001),
    (3005, 'Graham Zusi', 'California', 200, 5002),
    (3008, 'Julian Green', 'London', 300, 5002),
    (3004, 'Fabian Johnson', 'Paris', 300, 5006),
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007),
    (3001, 'Brad Guzan', 'London', NULL, 5005);

	select * from customer5 where not (city = 'New York' or grade > 100);
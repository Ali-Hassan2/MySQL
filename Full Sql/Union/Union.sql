-- Create the Customer_A table
CREATE TABLE Customer_A (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    CustomerEmail VARCHAR(50)
);

-- Insert 10 records into the Customer_A table
INSERT INTO Customer_A (CustomerID, CustomerName, CustomerEmail) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com'),
(3, 'Bob Johnson', 'bob@example.com'),
(4, 'Alice Williams', 'alice@example.com'),
(5, 'Chris Miller', 'chris@example.com'),
(6, 'Jessica Brown', 'jessica@example.com'),
(7, 'David Davis', 'david@example.com'),
(8, 'Emma Wilson', 'emma@example.com'),
(9, 'Michael Taylor', 'michael@example.com'),
(10, 'Olivia Anderson', 'olivia@example.com');

-- Create the Customer_B table
CREATE TABLE Customer_B (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    CustomerEmail VARCHAR(50)
);

-- Insert 10 records into the Customer_B table
INSERT INTO Customer_B (CustomerID, CustomerName, CustomerEmail) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com'),
(3, 'Bob Johnson', 'bob@example.com'),
(4, 'Alice Williams', 'alice@example.com'),
(5, 'Chris Miller', 'chris@example.com'),
(6, 'Jessica Brown', 'jessica@example.com'),
(7, 'David Davis', 'david@example.com'),
(8, 'Emma Wilson', 'emma@example.com'),
(9, 'Michael Taylor', 'michael@example.com'),
(10, 'Olivia Anderson', 'olivia@example.com');


select * from Customer_A
union
select * from Customer_B;
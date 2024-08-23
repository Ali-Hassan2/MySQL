-- Create the Employee table
CREATE TABLE Employee2 (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    EmployeeCity VARCHAR(50),
    EmployeeEmail VARCHAR(50),
    Price DECIMAL(10, 2)  -- Adding Price column
);

-- Insert 20 records into the Employee table with the same value for Price
INSERT INTO Employee2 (EmployeeID, EmployeeName, EmployeeCity, EmployeeEmail, Price)
VALUES
    (1, 'John Doe', 'New York', 'john.doe@example.com', 100.00),
    (2, 'Jane Smith', 'Los Angeles', 'jane.smith@example.com', 150.00),
    (3, 'Bob Johnson', 'New York', 'bob.johnson@example.com', 120.00),
    (4, 'Alice Williams', 'Chicago', 'alice.williams@example.com', 130.00),
    (5, 'Chris Miller', 'Los Angeles', 'chris.miller@example.com', 110.00),
    (6, 'Jessica Brown', 'San Francisco', 'jessica.brown@example.com', 140.00),
    (7, 'David Davis', 'New York', 'david.davis@example.com', 125.00),
    (8, 'Emma Wilson', 'Chicago', 'emma.wilson@example.com', 115.00),
    (9, 'Michael Taylor', 'Houston', 'michael.taylor@example.com', 105.00),
    (10, 'Olivia Anderson', 'Los Angeles', 'olivia.anderson@example.com', 135.00),
    (11, 'Sophia Martin', 'San Francisco', 'sophia.martin@example.com', 145.00),
    (12, 'Liam White', 'Chicago', 'liam.white@example.com', 120.00),
    (13, 'Benjamin Harris', 'Houston', 'benjamin.harris@example.com', 110.00),
    (14, 'Isabella Clark', 'San Francisco', 'isabella.clark@example.com', 130.00),
    (15, 'James Lewis', 'New York', 'james.lewis@example.com', 125.00),
    (16, 'Mia Robinson', 'Los Angeles', 'mia.robinson@example.com', 115.00),
    (17, 'William Walker', 'Chicago', 'william.walker@example.com', 105.00),
    (18, 'Emily Hall', 'Houston', 'emily.hall@example.com', 100.00),
    (19, 'Ethan Allen', 'San Francisco', 'ethan.allen@example.com', 140.00),
    (20, 'Ava Young', 'New York', 'ava.young@example.com', 150.00);

-- Query to select EmployeeCity and sum of Price
select sum(Price) as total_sum from Employee2 group by EmployeeCity;

select EmployeeCity, sum(Price) as total from Employee2 group by EmployeeCity;
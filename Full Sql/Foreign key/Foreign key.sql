-- Create the Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

-- Create the Order table
CREATE TABLE [Order] (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    Amount DECIMAL(10, 2),
    CustomerID INT foreign key references Customer(CustomerID) 
);

-- Insert 10 records into the Customer table
INSERT INTO Customer (CustomerID, CustomerName, ContactNumber, Email, Address) VALUES 
(1, 'John Doe', '123-456-7890', 'john@example.com', '123 Elm Street'),
(2, 'Jane Smith', '234-567-8901', 'jane@example.com', '456 Oak Street'),
(3, 'Alice Johnson', '345-678-9012', 'alice@example.com', '789 Pine Street'),
(4, 'Bob Brown', '456-789-0123', 'bob@example.com', '101 Maple Street'),
(5, 'Charlie Davis', '567-890-1234', 'charlie@example.com', '202 Birch Street'),
(6, 'Daisy Miller', '678-901-2345', 'daisy@example.com', '303 Cedar Street'),
(7, 'Eve Wilson', '789-012-3456', 'eve@example.com', '404 Walnut Street'),
(8, 'Frank Harris', '890-123-4567', 'frank@example.com', '505 Spruce Street'),
(9, 'Grace Lee', '901-234-5678', 'grace@example.com', '606 Fir Street'),
(10, 'Hank Moore', '012-345-6789', 'hank@example.com', '707 Ash Street');

-- Insert 10 records into the Order table
INSERT INTO [Order] (OrderID, OrderDate, Amount, CustomerID) VALUES 
(1, '2023-01-01', 100.00, 1),
(2, '2023-01-02', 200.00, 2),
(3, '2023-01-03', 300.00, 3),
(4, '2023-01-04', 400.00, 4),
(5, '2023-01-05', 500.00, 5),
(6, '2023-01-06', 600.00, 6),
(7, '2023-01-07', 700.00, 7),
(8, '2023-01-08', 800.00, 8),
(9, '2023-01-09', 900.00, 9),
(10, '2023-01-10', 1000.00, 10);

select *  from Customer;
select * from [order];




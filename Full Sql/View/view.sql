CREATE TABLE Category (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName VARCHAR(100) NOT NULL
);

-- Insert 10 records into the Category table
INSERT INTO Category (CategoryName) VALUES 
('Electronics'),
('Books'),
('Clothing'),
('Furniture'),
('Toys'),
('Food'),
('Beauty'),
('Automotive'),
('Sports'),
('Home Appliances');

-- Create the Product table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    CategoryID INT NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Insert 10 records into the Product table
INSERT INTO Product (ProductName, Price, CategoryID) VALUES 
('Smartphone', 699.99, 1),
('Laptop', 999.99, 1),
('Fiction Book', 19.99, 2),
('Non-Fiction Book', 24.99, 2),
('T-shirt', 14.99, 3),
('Jeans', 39.99, 3),
('Sofa', 499.99, 4),
('Dining Table', 299.99, 4),
('Action Figure', 29.99, 5),
('Doll', 19.99, 5);

select *  from Product;
-- so i want t separte view for the product i can use the view in the sql and make a separate view for the Product.
create view [product info]
as select ProductName, ProductID from Product;

select * from [product info];

create view [prod] as 
select Price from Product where ProductID=3;

select *  from [prod];
--28. From the following table, write a SQL query to 
--find the items whose prices are higher than or equal to $250.
--Order the result by product price in descending, then product name in ascending.
--Return pro_name and pro_price.

 CREATE TABLE products3 (
    pro_id INT PRIMARY KEY,
    pro_name VARCHAR(100),
    pro_price DECIMAL(10, 2),
    pro_com INT
);

INSERT INTO products3 (pro_id, pro_name, pro_price, pro_com) VALUES
(101, 'Mother Board', 3200.00, 15),
(102, 'Key Board', 450.00, 16),
(103, 'ZIP drive', 250.00, 14),
(104, 'Speaker', 550.00, 16),
(105, 'Monitor', 5000.00, 11),
(106, 'DVD drive', 900.00, 12),
(107, 'CD drive', 800.00, 12),
(108, 'Printer', 2600.00, 13),
(109, 'Refill cartridge', 350.00, 13),
(110, 'Mouse', 250.00, 12);

select pro_name,pro_price from products3 where pro_price >= 250 
order by pro_price desc,pro_name;

--25. From the following table, write a SQL query to select a range of products whose price is in the range Rs.200 to Rs.600. Begin and end values are included. Return pro_id, pro_name, pro_price, and pro_com.  

--Sample table: item_mast

 --PRO_ID PRO_NAME                       PRO_PRICE    PRO_COM
------- ------------------------- -------------- ----------
 --   101 Mother Board                    3200.00         15
 --   102 Key Board                        450.00         16
 --   103 ZIP drive                        250.00         14
 --   104 Speaker                          550.00         16
 --   105 Monitor                         5000.00         11
 --   106 DVD drive                        900.00         12
 --   107 CD drive                         800.00         12
 --   108 Printer                         2600.00         13
 --   109 Refill cartridge                 350.00         13
 --   110 Mouse                            250.00         12

 CREATE TABLE products (
    pro_id INT PRIMARY KEY,
    pro_name VARCHAR(100),
    pro_price DECIMAL(10, 2),
    pro_com INT
);

INSERT INTO products (pro_id, pro_name, pro_price, pro_com) VALUES
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

select * from products where pro_price  between 200 and 600;
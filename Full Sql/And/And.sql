create table customers5(
	cust_id int primary key,
	cust_name varchar(255),
	cust_address varchar(255) not null,
	cust_phone bigint not null,
	email varchar(255) not null);

	insert into customers5(cust_id, cust_name, cust_address, cust_phone, email) values 
(2, 'Sara Khan', '123 Main St, Lahore', 0300123456, 'sarakhan@example.com'),
(3, 'John Doe', '456 Elm St, Karachi', 0311122334, 'johndoe@example.com'),
(4, 'Emily Smith', '789 Oak St, Islamabad', 0321345678, 'emilysmith@example.com'),
(5, 'Ahmed Malik', '321 Pine St, Peshawar', 0341567890, 'ahmedmalik@example.com'),
(6, 'Ayesha Shah', '567 Birch St, Quetta', 0351789456, 'ayeshashah@example.com'),
(7, 'Michael Lee', '890 Cedar St, Rawalpindi', 0341987654, 'michaellee@example.com'),
(8, 'Fatima Ahmed', '432 Maple St, Faisalabad', 0331789456, 'fatimaahmed@example.com'),
(9, 'Daniel Brown', '876 Walnut St, Multan', 0321987654, 'danielbrown@example.com'),
(10, 'Zoya Khan', '654 Ash St, Hyderabad', 0311789456, 'zoyakhan@example.com'),
(11, 'Kamran Ali', '789 Pine St, Sialkot', 0301345678, 'kamranali@example.com');


--And

select * from customers5 where cust_id = 4 and cust_name like'E%';



create table products11 (
    id int primary key ,
    product_name varchar(255) not null,
    description varchar(255),
    price decimal(10, 2) not null
);

-- Insert 10 random records into the 'products' table
insert into products11 (id,product_name, description, price) values
(1,'Laptop', 'High performance laptop', 1500.00),
(2,'Smartphone', 'Latest model smartphone', 800.00),
(3,'Headphones', 'Noise-cancelling headphones', 200.00),
(4,'Tablet', '10-inch tablet', 400.00),
(5,'Camera', 'DSLR camera', 1200.00),
(6,'Smart Watch', 'Fitness tracker', 150.00),
(7,'External Hard Drive', '1TB portable hard drive', 100.00),
(8,'Printer', 'Color inkjet printer', 300.00),
(9,'Bluetooth Speaker', 'Portable speaker', 50.00),
(10,'Gaming Console', 'Next-gen gaming console', 500.00);

select * from products11 where product_name like'%E' and price = 100.00 and id >6;

select * from products11 where product_name = 'Laptop' and (description like '%H' or description like 'h%');
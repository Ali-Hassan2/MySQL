create database final;
use final;
create table customers(
	id int primary key,
	cust_name varchar(255),
	cust_address varchar(255) not null,
	cust_phone bigint not null,
	email varchar(255) not null);

	insert into customers(id, cust_name, cust_address, cust_phone, email) values 
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

-- Select
	select * from customers;

	select cust_name, cust_address from customers;
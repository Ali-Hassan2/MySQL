	create table products15 (
		id int primary key ,
		product_name varchar(255) not null,
		description varchar(255),
		price decimal(10, 2) not null
	);

	-- Insert 10 random records into the 'products' table
	insert into products15 (id,product_name, description, price) values
	(1,'Laptop', 'High performance laptop',100.00),
	(2,'Smartphone', 'Latest model smartphone', 800.00),
	(3,'Headphones', 'Noise-cancelling headphones', 200.00),
	(4,'Tablet', '10-inch tablet', 400.00),
	(5,'Camera', 'DSLR camera', 1200.00),
	(6,'Smart Watch', 'Fitness tracker', 150.00),
	(7,'External Hard Drive', '1TB portable hard drive', 100.00),
	(8,'Printer', 'Color inkjet printer', 300.00),
	(9,'Bluetooth Speaker', 'Portable speaker', 50.00),
	(10,'Gaming Console', 'Next-gen gaming console', 500.00);

	select avg(price) from products15;

	select avg(price) from products15 where id not between 3 and 7;

	select avg(price) from products15 where id = 4;

	select avg(price*670) from products15 where id between 1 and 8;

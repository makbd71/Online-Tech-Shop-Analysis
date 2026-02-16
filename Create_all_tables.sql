CREATE TABLE categories(
category_id SERIAL PRiMARY KEY,
category_name varchar (100)
)


CREATE TABLE products (
product_id SERIAL PRIMARY KEY,
product_name varchar (100),
category_id INT,  
FOREIGN KEY (category_id) REFERENCES categories (category_id) 
);


CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
	product_id INT, 
	FOREIGN KEY (product_id ) REFERENCES products(product_id),
	category_id INT, 
	FOREIGN KEY (category_id) REFERENCES categories(category_id),
	region VARCHAR(200),
	quantity INT,
	price DECIMAL(10,2),
	sales DECIMAL(10,2),
	profit DECIMAL(10,2),
	order_timestamp DATE
);



Insert into orders (product_id, category_id, region, quantity, price, sales, profit, order_timestamp)

values (1,3,'North',4,910,3640,348.93,'12-31-2024'); 



Select * from orders; 


SELECT c.category_id,category_name, product_id, product_name  
FROM products p 
JOIN categories c 
On c.category_id = p.category_id
where category_name like 'Accessories';


select * from orders;

 select *
 from information_schema.tables

 
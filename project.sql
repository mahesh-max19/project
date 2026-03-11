create DATABASE sales_report;
use sales_report;
create table customers(c_id int,c_name varchar(30),city varchar(20));
INSERT INTO customers VALUES
(1,'Mahesh','Hyderabad'),
(2,'Ravi','Chennai'),
(3,'Anita','Bangalore'),
(4,'Suresh','Delhi');
select*from customers;
create table products(p_id int,p_name varchar(30),category VARCHAR(30),price FLOAT);
INSERT INTO products VALUES
(101,'Laptop','Electronics',50000),
(102,'Mobile','Electronics',20000),
(103,'Chair','Furniture',3000),
(104,'Table','Furniture',7000);
select*from products;
create table sales(s_id int PRIMARY KEY,c_id int,p_id int,quantity int,s_date date);
INSERT INTO sales VALUES
(1,1,101,1,'2024-01-10'),
(2,2,102,2,'2024-01-12'),
(3,1,103,3,'2024-02-10'),
(4,3,104,1,'2024-02-15'),
(5,4,102,1,'2024-03-05');
select*from sales;
-- total sales per product
select products.p_name,SUM(sales.quantity*products.price) as total_sales
from sales join products on sales.p_id=products.p_id
GROUP BY products.p_name;

-- sales by city

select customers.city,sum(sales.quantity*products.price)as total_sales
from sales join customers on sales.c_id=customers.c_id
join products on sales.p_id=products.p_id
GROUP BY customers.city;

-- Top Selling Product
select products.p_name,sum(sales.quantity) as total_quantity from sales 
join products on sales.p_id=products.p_id
group by products.p_name
order by total_quantity DESC
LIMIT 1;

-- Monthly Sales Report
select month(s_date) as month,sum(quantity*products.price) as total_salesfrom sales 
join products on sales.p_id=products.p_id
group by month (s_date);


-- Rank Products by Sales
select products.p_name,SUM(sales.quantity*products.price) as total_sales,
rank() over(order by sum(sales.quantity*products.price) desc) as s_rank
from sales join products on sales.p_id=products.p_id
group by products.p_name;

create view  sales_reports as
select
customers.c_name,
products.p_name,
sales.quantity,
(products.price*sales.quantity) as total_price,
sales.s_date
from sales 
join customers 
on sales.c_id=customers.c_id
join products 
on sales.p_id=products.p_id;

select*from sales_reports;

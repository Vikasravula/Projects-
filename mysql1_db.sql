CREATE DATABASE mydb1

use mydb1

CREATE TABLE `customer` (
  `custID` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` bigint(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zipcode` mediumint(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
);

CREATE TABLE `product` (
  `prodID` varchar(50) DEFAULT NULL,
  `name` varchar(43) DEFAULT NULL,
  `quantity` tinyint(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `cost_price` mediumint(50) DEFAULT NULL,
  `sell_price` decimal(10,2) DEFAULT NULL,
  `description` varchar(134) DEFAULT NULL,
  `sellID` varchar(50) DEFAULT NULL,
  `transaction_date` DATE DEFAULT NULL
);


CREATE TABLE `seller` (
  `sellID` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zipcode` mediumint(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
);

CREATE TABLE `orders` (
  `orderID` varchar(50) DEFAULT NULL,
  `custID` varchar(50) DEFAULT NULL,
  `prodID` varchar(50) DEFAULT NULL,
  `quantity` tinyint(50) DEFAULT NULL,
  `date` DATE DEFAULT NULL,
  `cost_price` mediumint(50) DEFAULT NULL,
  `sell_price` mediumint(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
);

INSERT INTO `customer` (custID, name, email, phone, area, locality, city, state, country, zipcode, password)
VALUES
  ('CID0000001', 'John Doe', 'johndoe@email.com', 1234567890, 'Main Street', 'Downtown', 'New York', 'New York', 'USA', 10001, '123'),
  ('CID0000002', 'Alice Johnson', 'alice@email.com', 9876543210, 'First Avenue', 'Suburb', 'Los Angeles', 'California', 'USA', 90001, '123'),
  ('CID0000003', 'Bob Smith', 'bob.smith@email.com', 5551234567, 'Central Street', 'City Center', 'Chicago', 'Illinois', 'USA', 60001, '123');

INSERT INTO `seller` (sellID, name, email, phone, area, locality, city, state, country, zipcode, password, status)
VALUES
  ('SELL000001', 'Electronics Store', 'electronics@store.com', 1234567890, 'Downtown', 'City Center', 'New York', 'New York', 'USA', 10001, 'sellerpass', 'active'),
  ('SELL000002', 'Tech Gadget Shop', 'techgadgets@shop.com', 9876543210, 'Suburb', 'Shopping District', 'Los Angeles', 'California', 'USA', 90001, 'pass1234', 'active'),
  ('SELL000003', 'Accessory Outlet', 'accessories@outlet.com', 5551234567, 'Business District', 'Mall', 'Chicago', 'Illinois', 'USA', 60001, 'storesell', 'inactive');


INSERT INTO `product` (prodID, name, quantity, category, cost_price, sell_price, description, sellID, transaction_date)
VALUES
  ('PROD000001', 'Mobile Phone X', 100, 'Electronics', 500, 600, 'Latest smartphone model', 'SELL000001', '2023-01-10'),
  ('PROD000002', 'Smartphone Y', 80, 'Electronics', 450, 550, 'High-performance mobile', 'SELL000002', '2023-01-12'),
  ('PROD000003', 'Mobile Device Z', 120, 'Electronics', 400, 480, 'Affordable mobile device', 'SELL000001', '2023-02-01');


INSERT INTO `orders` (orderID, custID, prodID, quantity, date, cost_price, sell_price, status)
VALUES
  ('ORD000001', 'CID0000001', 'PROD000001', 3, '2023-01-15', 500, 600, 'Completed'),
  ('ORD000002', 'CID0000002', 'PROD000002', 2, '2023-01-20', 450, 550, 'Shipped'),
  ('ORD000003', 'CID0000001', 'PROD000003', 1, '2023-02-05', 400, 480, 'Completed');



INSERT INTO `customer` (custID, name, email, phone, area, locality, city, state, country, zipcode, password)
VALUES
  ('CID0000004', 'Ella Johnson', 'ella@email.com', 9871234567, 'Second Street', 'Suburb', 'Los Angeles', 'California', 'USA', 90002, 'customerpass'),
  ('CID0000005', 'David Wilson', 'david@email.com', 5559876543, 'Third Avenue', 'Downtown', 'New York', 'New York', 'USA', 10002, 'secure123'),
  ('CID0000006', 'Sophia Adams', 'sophia@email.com', 5551112222, 'Central Avenue', 'City Center', 'Chicago', 'Illinois', 'USA', 60002, 'password456');


INSERT INTO `seller` (sellID, name, email, phone, area, locality, city, state, country, zipcode, password, status)
VALUES
  ('SELL000004', 'Tech World', 'techworld@shop.com', 9877654321, 'Downtown', 'Electronics District', 'Los Angeles', 'California', 'USA', 90003, 'sellertech', 'active'),
  ('SELL000005', 'Gadget Zone', 'gadgetzone@store.com', 5552223333, 'Mall Street', 'Shopping Center', 'Chicago', 'Illinois', 'USA', 60003, 'gadgetpass', 'active'),
  ('SELL000006', 'Accessory Hub', 'accessoryhub@outlet.com', 5557778888, 'Business Center', 'Mall', 'Chicago', 'Illinois', 'USA', 60004, 'hub123', 'active');


INSERT INTO `product` (prodID, name, quantity, category, cost_price, sell_price, description, sellID, transaction_date)
VALUES
  ('PROD000004', 'Tablet Device A', 50, 'Electronics', 300, 350, 'High-quality tablet', 'SELL000004', '2023-02-10'),
  ('PROD000005', 'Smartwatch B', 70, 'Wearable Tech', 150, 200, 'Fitness smartwatch', 'SELL000005', '2023-02-12'),
  ('PROD000006', 'Laptop C', 40, 'Electronics', 800, 900, 'Powerful laptop', 'SELL000004', '2023-03-01');


INSERT INTO `orders` (orderID, custID, prodID, quantity, date, cost_price, sell_price, status)
VALUES
  ('ORD000004', 'CID0000003', 'PROD000005', 2, '2023-02-15', 150, 200, 'Shipped'),
  ('ORD000005', 'CID0000004', 'PROD000006', 3, '2023-02-20', 800, 900, 'Completed'),
  ('ORD000006', 'CID0000005', 'PROD000004', 1, '2023-03-05', 300, 350, 'Completed');

-- question 1
SELECT COUNT(*) AS registered_vendors FROM seller;

-- question 2
SELECT 
  SUM(CASE WHEN status = 'active' THEN 1 ELSE 0 END) AS active_sellers,
  SUM(CASE WHEN status = 'inactive' THEN 1 ELSE 0 END) AS inactive_sellers
FROM seller;

-- question 3
SELECT COUNT(*) AS total_customers
FROM customer;

-- question 4
SELECT sellID, COUNT(*) AS number_of_listings
FROM product
GROUP BY sellID
ORDER BY number_of_listings DESC
LIMIT 1;

-- question 5
SELECT custID, COUNT(*) AS number_of_orders
FROM orders
GROUP BY custID
ORDER BY number_of_orders DESC
LIMIT 1;

-- question 6
SELECT
    DATE_FORMAT(transaction_date, '%M') AS month,
    sellID,
    SUM(sell_price * quantity) AS revenue
FROM product
WHERE transaction_date BETWEEN '2023-01-01' AND '2023-03-31'
GROUP BY month, sellID
ORDER BY month, revenue DESC
LIMIT 5;

-- question 7
SELECT
    custID,
    SUM(sell_price * quantity) AS total_revenue
FROM orders
WHERE YEAR(date) = YEAR(CURDATE())
GROUP BY custID
ORDER BY total_revenue DESC
LIMIT 5;

-- question 8
-- Calculate total revenue for the current month
SELECT
    DATE_FORMAT(CURDATE(), '%M') AS current_month,
    SUM(sell_price * quantity) AS current_month_revenue
FROM orders
WHERE DATE_FORMAT(date, '%Y-%m') = DATE_FORMAT(CURDATE(), '%Y-%m');

-- Calculate total revenue for the same month in the previous year
SELECT
    DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 YEAR), '%M') AS previous_year_month,
    SUM(sell_price * quantity) AS previous_year_month_revenue
FROM orders
WHERE DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 YEAR), '%Y-%m') = DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 YEAR), '%Y-%m');

-- Customer questions

-- question 9
SELECT MAX(sell_price * quantity) AS most_expensive_order
 FROM orders;

-- question 10
SELECT COUNT(*) AS total_orders
FROM orders
WHERE custID = 'CID0000003';

-- question 11
SELECT SUM(sell_price * quantity) AS total_spend
FROM orders
WHERE custID = 'CID0000003' AND YEAR(date) = YEAR(CURDATE());

-- question 13
SELECT table_schema "mydb1", 
  SUM(data_length + index_length) / 1024 / 1024 "Database Size (MB)" 
FROM information_schema.tables 
GROUP BY table_schema;

select * from customer;




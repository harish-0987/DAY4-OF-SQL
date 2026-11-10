-- =======================================================
-- DAY 4 OF SQL: TYPES OF DATABASES - HANDS-ON PRACTICE
-- Topic: Relational Database Modeling (A Few Concise Lines)
-- =======================================================

-- 1. Create and use database
CREATE DATABASE IF NOT EXISTS day4_db;
USE day4_db;

-- 2. Create 'customers' table (Entity 1)
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(50) DEFAULT 'Hyderabad'
);

-- 3. Create 'orders' table with Foreign Key link (Entity 2)
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_name VARCHAR(100) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    order_date DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 4. Insert sample data
INSERT INTO customers (name, email, city) VALUES
('Harish', 'harish@example.com', 'Hyderabad'),
('Rahul', 'rahul@example.com', 'Bangalore'),
('Ananya', 'ananya@example.com', 'Mumbai');

INSERT INTO orders (customer_id, product_name, amount) VALUES
(1, 'Laptop', 75000.00),
(1, 'Mouse', 1200.00),
(2, 'Keyboard', 2500.00),
(3, 'Monitor', 18000.00);

-- 5. Query: Relational JOIN connecting customers and orders
SELECT 
    c.name AS customer_name,
    c.city,
    o.product_name,
    o.amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- 6. Query: Aggregation per customer
SELECT 
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

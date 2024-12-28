-- Create sample tables
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10, 2)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert sample data
INSERT INTO orders (order_id, customer_id, amount)
VALUES
    (101, 1, 250.00),
    (102, 2, 150.50),
    (103, 1, 300.00);

INSERT INTO customers (customer_id, name)
VALUES
    (1, 'Alice'),
    (2, 'Bob');

-- Join tables and calculate total amount per customer
SELECT c.name AS customer_name, SUM(o.amount) AS total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

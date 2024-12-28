-- Sample dataset for testing
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO products (product_id, product_name, price)
VALUES
    (1, 'Laptop', 800.00),
    (2, 'Mouse', 20.00),
    (3, 'Keyboard', 50.00),
    (4, 'Monitor', 150.00);

-- Create a sample table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    employee_id INT,
    amount DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO sales (sale_id, employee_id, amount)
VALUES
    (1, 101, 200.00),
    (2, 102, 500.00),
    (3, 101, 300.00),
    (4, 102, 700.00),
    (5, 101, 100.00);

-- Calculate running total per employee using a window function
SELECT
    employee_id,
    amount,
    SUM(amount) OVER (PARTITION BY employee_id ORDER BY sale_id) AS running_total
FROM sales;

-- Create a sample table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

-- Insert sample data
INSERT INTO employees (id, name, age, department)
VALUES
    (1, 'Alice', 30, 'HR'),
    (2, 'Bob', 25, 'Engineering'),
    (3, 'Charlie', 35, 'Finance');

-- Simple SELECT query
SELECT name, department
FROM employees;

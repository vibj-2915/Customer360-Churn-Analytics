CREATE DATABASE IF NOT EXISTS customer360_db;
USE customer360_db;

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    region VARCHAR(50),
    signup_date DATE
);

INSERT INTO customers (customer_id, name, age, gender, region, signup_date) VALUES
(1, 'Amit Sharma', 28, 'Male', 'North', '2022-01-15'),
(2, 'Riya Verma', 34, 'Female', 'West', '2021-11-23'),
(3, 'John Dsouza', 25, 'Male', 'South', '2023-02-10'),
(4, 'Priya Mehta', 30, 'Female', 'East', '2021-06-04'),
(5, 'Ankit Gupta', 40, 'Male', 'Central', '2020-03-11'),
(6, 'Neha Jain', 29, 'Female', 'North', '2023-04-20'),
(7, 'Rahul Roy', 38, 'Male', 'West', '2019-08-09'),
(8, 'Anjali Singh', 26, 'Female', 'South', '2022-09-30'),
(9, 'Saurabh Mishra', 31, 'Male', 'East', '2020-12-01'),
(10, 'Divya Kapoor', 27, 'Female', 'Central', '2021-10-25');

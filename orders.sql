USE customer360_db;

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    total_price FLOAT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
  
INSERT INTO orders (order_id, customer_id, product_id, order_date, quantity, total_price) VALUES
(101, 1, 1001, '2023-01-15', 2, 1999.98),
(102, 2, 1002, '2023-01-20', 1, 999.99),
(103, 3, 1003, '2023-02-10', 3, 4499.97),
(104, 4, 1004, '2023-02-22', 1, 799.00),
(105, 1, 1002, '2023-03-01', 1, 999.99),
(106, 5, 1003, '2023-03-05', 2, 2999.98),
(107, 6, 1005, '2023-03-15', 1, 1199.00),
(108, 7, 1001, '2023-03-20', 1, 999.99),
(109, 8, 1002, '2023-04-02', 2, 1999.98),
(110, 9, 1003, '2023-04-10', 1, 1499.99);

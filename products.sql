USE customer360_db;

CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    category VARCHAR(50),
    brand VARCHAR(50),
    cost_price FLOAT,
    sell_price FLOAT
);

INSERT INTO products (product_id, category, brand, cost_price, sell_price) VALUES
(1001, 'Electronics', 'Samsung', 800.00, 999.99),
(1002, 'Electronics', 'Apple', 850.00, 999.99),
(1003, 'Appliances', 'LG', 1200.00, 1499.99),
(1004, 'Home', 'Philips', 600.00, 799.00),
(1005, 'Accessories', 'Boat', 950.00, 1199.00);

USE customer360_db;

CREATE TABLE IF NOT EXISTS returns (
    return_id INT PRIMARY KEY,
    order_id INT,
    return_reason VARCHAR(100),
    refund_amount FLOAT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO returns (return_id, order_id, return_reason, refund_amount) VALUES
(1, 102, 'Defective product', 999.99),
(2, 104, 'Late delivery', 799.00),
(3, 106, 'Changed mind', 1499.99),
(4, 109, 'Wrong item', 999.99);

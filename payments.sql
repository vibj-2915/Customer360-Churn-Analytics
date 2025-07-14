USE customer360_db;

CREATE TABLE IF NOT EXISTS payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    method VARCHAR(50),
    status VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO payments (payment_id, order_id, method, status) VALUES
(501, 101, 'UPI', 'Paid'),
(502, 102, 'Credit Card', 'Paid'),
(503, 103, 'Net Banking', 'Paid'),
(504, 104, 'UPI', 'Paid'),
(505, 105, 'Debit Card', 'Failed'),
(506, 106, 'UPI', 'Paid'),
(507, 107, 'Credit Card', 'Paid'),
(508, 108, 'UPI', 'Failed'),
(509, 109, 'UPI', 'Paid'),
(510, 110, 'Credit Card', 'Paid');

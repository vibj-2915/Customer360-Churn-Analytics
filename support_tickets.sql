USE customer360_db;

CREATE TABLE IF NOT EXISTS support_tickets (
    ticket_id INT PRIMARY KEY,
    customer_id INT,
    category VARCHAR(100),
    opened_date DATE,
    resolved_date DATE,
    satisfaction INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO support_tickets (ticket_id, customer_id, category, opened_date, resolved_date, satisfaction) VALUES
(10001, 1, 'Late Delivery', '2023-01-17', '2023-01-18', 4),
(10002, 2, 'Damaged Product', '2023-01-21', '2023-01-23', 2),
(10003, 3, 'Installation Help', '2023-02-11', '2023-02-12', 5),
(10004, 4, 'Return Process', '2023-02-24', '2023-02-27', 3),
(10005, 5, 'Billing Issue', '2023-03-06', '2023-03-08', 2),
(10006, 6, 'Late Delivery', '2023-03-16', '2023-03-17', 5),
(10007, 7, 'Wrong Item', '2023-03-21', '2023-03-23', 1),
(10008, 8, 'Payment Failed', '2023-04-03', '2023-04-05', 4),
(10009, 9, 'Warranty Query', '2023-04-11', '2023-04-12', 5),
(10010, 10, 'Installation Help', '2023-04-15', '2023-04-17', 4);

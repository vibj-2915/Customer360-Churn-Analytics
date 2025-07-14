SELECT 
    c.name,
    SUM(o.total_price) AS total_spent
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id
ORDER BY 
    total_spent DESC
LIMIT 5;


SELECT 
    p.category,
    COUNT(r.return_id) AS return_count,
    COUNT(o.order_id) AS total_orders,
    ROUND(COUNT(r.return_id)*100.0 / COUNT(o.order_id), 2) AS return_rate_percentage
FROM 
    orders o
JOIN 
    products p ON o.product_id = p.product_id
LEFT JOIN 
    returns r ON o.order_id = r.order_id
GROUP BY 
    p.category;


SELECT 
    method,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN status = 'Paid' THEN 1 ELSE 0 END) AS successful,
    ROUND(SUM(CASE WHEN status = 'Paid' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS success_rate
FROM 
    payments
GROUP BY 
    method;
    

SELECT 
    c.name,
    s.category,
    s.satisfaction
FROM 
    support_tickets s
JOIN 
    customers c ON s.customer_id = c.customer_id
WHERE 
    s.satisfaction <= 2;


SELECT 
    c.name,
    MAX(o.order_date) AS last_order_date,
    COUNT(r.return_id) AS total_returns,
    AVG(s.satisfaction) AS avg_satisfaction
FROM 
    customers c
LEFT JOIN 
    orders o ON c.customer_id = o.customer_id
LEFT JOIN 
    returns r ON o.order_id = r.order_id
LEFT JOIN 
    support_tickets s ON c.customer_id = s.customer_id
GROUP BY 
    c.customer_id
HAVING 
    MAX(o.order_date) < CURDATE() - INTERVAL 60 DAY
    AND total_returns >= 1
    AND avg_satisfaction <= 3;

CREATE TABLE sales_transactions (
    order_id INTEGER,
    customer_id INTEGER,
    product_id INTEGER,
    region TEXT,
    quantity INTEGER,
    total_amount REAL,
    transaction_date TEXT
);
INSERT INTO sales_transactions VALUES
(1, 101, 1001, 'North', 2, 200.00, '2024-01-05'),
(2, 102, 1002, 'South', 1, 150.00, '2024-01-10'),
(3, 101, 1003, 'North', 3, 300.00, '2024-02-15'),
(4, 103, 1001, 'East', 1, 100.00, '2024-02-20'),
(5, 104, 1002, 'West', 4, 400.00, '2024-03-01'),
(6, 102, 1003, 'South', 2, 250.00, '2024-03-10');
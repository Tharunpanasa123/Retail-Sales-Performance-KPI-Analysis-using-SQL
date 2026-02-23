
-- Retail Sales KPI Analysis (SQLite Version)

-- 1. Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM sales_transactions;

-- 2. Monthly Sales Trend
SELECT 
    strftime('%Y-%m', transaction_date) AS month,
    SUM(total_amount) AS monthly_revenue
FROM sales_transactions
GROUP BY month
ORDER BY month;

-- 3. Average Order Value (AOV)
SELECT 
    SUM(total_amount) / COUNT(DISTINCT order_id) AS average_order_value
FROM sales_transactions;

-- 4. Customer Purchase Frequency
SELECT 
    customer_id,
    COUNT(order_id) AS purchase_frequency
FROM sales_transactions
GROUP BY customer_id
ORDER BY purchase_frequency DESC;

-- 5. Top 10 Selling Products
SELECT 
    product_id,
    SUM(quantity) AS total_quantity_sold
FROM sales_transactions
GROUP BY product_id
ORDER BY total_quantity_sold DESC
LIMIT 10;

-- 6. Regional Sales Performance
SELECT 
    region,
    SUM(total_amount) AS regional_revenue
FROM sales_transactions
GROUP BY region
ORDER BY regional_revenue DESC;

-- 7. Customer Segmentation (SQLite Compatible)
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent,
    NTILE(4) OVER (ORDER BY SUM(total_amount) DESC) AS customer_segment
FROM sales_transactions
GROUP BY customer_id;
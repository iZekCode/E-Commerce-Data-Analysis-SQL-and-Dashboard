-- Total Sales
CREATE VIEW view_total_sales AS
SELECT 
    ROUND(SUM(payment_value), 2) AS total_sales
FROM Main;

-- On-Time Rate
CREATE VIEW view_ontime_rate AS
SELECT 
    ROUND(
        100 * SUM(CASE 
                    WHEN order_delivered_timestamp <= order_estimated_delivery_date 
                    THEN 1 ELSE 0 END) / COUNT(*), 
        2
    ) AS ontime_rate
FROM Main
WHERE order_status = 'delivered';

-- Cancellation Rate
CREATE VIEW view_cancellation_rate AS
SELECT 
    ROUND(
        100 * SUM(CASE WHEN order_status = 'canceled' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS cancellation_rate
FROM Main;


-- Sales Trends per Month
CREATE VIEW view_sales_trend_monthly AS
SELECT 
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month,
    ROUND(SUM(payment_value), 2) AS total_sales
FROM Main
GROUP BY DATE_FORMAT(order_purchase_timestamp, '%Y-%m')
ORDER BY month;

-- Total Sales per Product Category
CREATE VIEW view_sales_per_category AS
SELECT 
    product_category_name,
    ROUND(SUM(payment_value), 2) AS total_sales
FROM Main
GROUP BY product_category_name
ORDER BY total_sales DESC;

-- Top 5 Sellers with Highest Sales Performance
CREATE VIEW view_top5_sellers AS
SELECT 
    seller_id,
    ROUND(SUM(payment_value), 2) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders
FROM Main
GROUP BY seller_id
ORDER BY total_sales DESC
LIMIT 5;

-- Number of Orders Based on Status
CREATE VIEW view_order_status_distribution AS
SELECT 
    order_status,
    COUNT(DISTINCT order_id) AS total_orders
FROM Main
GROUP BY order_status
ORDER BY total_orders DESC;

-- Payment Method Distribution
CREATE VIEW view_payment_distribution AS
SELECT 
    payment_type,
    ROUND(100 * COUNT(*) / (SELECT COUNT(*) FROM Main), 2) AS percentage
FROM Main
GROUP BY payment_type
ORDER BY percentage DESC;

-- Customer Distribution by City
CREATE VIEW view_customer_city_distribution AS
SELECT 
    customer_city,
    COUNT(DISTINCT customer_id) AS total_customers
FROM Main
GROUP BY customer_city
ORDER BY total_customers DESC;

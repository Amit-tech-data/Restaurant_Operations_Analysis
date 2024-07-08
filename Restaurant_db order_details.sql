--- 1. View the order_details table.
SELECT * FROM order_details;

--- 2. What is the date range of the table?
SELECT MIN(order_date) AS start_date,
MAX(order_date)AS end_date 
FROM order_details;

--- 3. How many orders were made within this date range?
SELECT COUNT(DISTINCT order_id)AS total_orders 
FROM order_details;

--- 4. How many items were ordered within this date range?
SELECT COUNT(order_details)AS num_items 
FROM order_details;

--- 5. What is the maximum number of items per order?
SELECT order_id,
COUNT(item_id) AS items_per_order 
FROM order_details
GROUP BY order_id
ORDER BY items_per_order DESC;
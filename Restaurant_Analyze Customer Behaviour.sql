--- 1. Joining two tables using join?
SELECT  * FROM order_details od
INNER JOIN menu_items mi
ON od.item_id = mi.menu_item_id;

--- 2. What were the most ordered items? What categories were they in?
SELECT  item_name,category, 
COUNT(order_details_id) AS num_purchases 
FROM order_details od
INNER JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases DESC;

--- 3. What were the least ordered items? What categories were they in?
SELECT  item_name,category, 
COUNT(order_details_id) AS num_purchases 
FROM order_details od
INNER JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases ASC;

--- 4. What do the highest spending orders look like? How much did they spend?
SELECT order_id,
SUM(price) AS total_spend 
FROM order_details od
INNER JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC;

--- 5. Which category of the items were purchased the most by customers?
SELECT category,
COUNT(item_id)AS num_items 
FROM order_details od
INNER JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY category
ORDER BY num_items DESC;

--- 6.a) Which Asian dishes did customers spend the most on?
SELECT category,item_name,
SUM(price)AS total_spend 
FROM order_details od
INNER JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY category,item_name
HAVING category = 'Asian'
ORDER BY total_spend DESC;

--- 6.b) Which Italian dishes did customers spend the most on?
SELECT category,item_name,
SUM(price)AS total_spend 
FROM order_details od
INNER JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY category,item_name
HAVING category = 'Italian'
ORDER BY total_spend DESC;

--- 6.c) Which Mexican dishes did customers spend the most on?
SELECT category,item_name,
SUM(price)AS total_spend 
FROM order_details od
INNER JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY category,item_name
HAVING category = 'Mexican'
ORDER BY total_spend DESC;

--- 6.d) Which American dishes did customers spend the most on?
SELECT category,item_name,
SUM(price)AS total_spend 
FROM order_details od
INNER JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY category,item_name
HAVING category = 'American'
ORDER BY total_spend DESC;

---7. Which category did customers spend the most on?
SELECT category,
COUNT(item_name) AS num_items,
SUM(price)AS total_spend
FROM order_details od
INNER JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY category
ORDER BY total_spend DESC;
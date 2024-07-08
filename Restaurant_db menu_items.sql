--- 1. Exploring menu_items table.
SELECT * FROM menu_items;

--- 2. Total number of items on the menu.
SELECT COUNT(*) FROM menu_items;

--- 3. How many items are there in each category?
SELECT category ,
count(DISTINCT menu_item_id) AS total_items
FROM menu_items
GROUP BY category;

--- 4. What are the most expensive items on the menu?
SELECT * FROM menu_items
ORDER BY price DESC;

--- 5. What are the least expensive items on the menu?
SELECT * FROM menu_items
ORDER BY price ASC;

--- 6.a) What are the most and least expensive American items on the menu?
SELECT * FROM menu_items
WHERE category = 'American'
ORDER BY price DESC

--- b) What are the most and least expensive Asian items on the menu?
SELECT * FROM menu_items
WHERE category = 'Asian'
ORDER BY price DESC

--- c) What are the most and least expensive Italian items on the menu?
SELECT * FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC

--- d) What are the most and least expensive Mexican items on the menu?
SELECT * FROM menu_items
WHERE category = 'Mexican'
ORDER BY price DESC

--- 7. What is the average dish price in each category?
SELECT category,ROUND(AVG(price),2) AS avg_price 
FROM menu_items
GROUP BY category;
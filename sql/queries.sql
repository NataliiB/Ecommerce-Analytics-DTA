--Task#1 Getting to know users

SELECT first_name,
       last_name,
       email,
       country, 
       created_at
FROM `bigquery-public-data.thelook_ecommerce.users`
WHERE country = "Brasil"
AND created_at>= '2023-01-01'
AND created_at < '2024-01-01'
LIMIT 1000;


--Task#2 Top product categories

SELECT category, 
       ROUND(COUNT(*) * 100/ COALESCE(SUM(COUNT(*)) OVER(), NULL),2) AS percentage
FROM `bigquery-public-data.thelook_ecommerce.products`
GROUP BY category
ORDER BY percentage DESC
LIMIT 1000;


--Task#3 Order Analysis (JOIN)

SELECT orders.order_id,
       users.first_name,
       users.last_name,
       orders.status
FROM `bigquery-public-data.thelook_ecommerce.orders` orders
JOIN `bigquery-public-data.thelook_ecommerce.users` users ON orders.user_id = users.id
WHERE orders.status = "Shipped"
LIMIT 1000;


--Task#4 Finance — the most expensive orders

SELECT  order_id, 
         user_id, 
         ROUND(SUM(sale_price),2) AS order_value
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY order_id, user_id
ORDER BY order_value DESC
LIMIT 10;


--Task#5 Users geography

SELECT country,
       COUNT(DISTINCT id) AS quantity
FROM `bigquery-public-data.thelook_ecommerce.users`
GROUP BY country
HAVING COUNT(DISTINCT id) > 500
ORDER BY quantity;
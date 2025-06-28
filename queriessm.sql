-- total sales and revenue by store
SELECT 
  s.store_id,
  st.city,
  SUM(s.quantity_sold) AS total_quantity,
  SUM(s.revenue) AS total_revenue
FROM sales s
JOIN stores st ON s.store_id = st.store_id
GROUP BY s.store_id, st.city
ORDER BY total_revenue DESC;


-- monthly sales trend 
SELECT 
  DATE_FORMAT(sale_date, '%Y-%m') AS month,
  SUM(revenue) AS total_revenue
FROM sales
GROUP BY month
ORDER BY month;


-- top 5 best selling products
SELECT 
  p.name,
  SUM(s.quantity_sold) AS total_quantity
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.name
ORDER BY total_quantity DESC
LIMIT 5;


-- store inventory levels (products low on stock)
SELECT 
  st.city,
  p.name AS product,
  i.stock_quantity
FROM inventory i
JOIN stores st ON i.store_id = st.store_id
JOIN products p ON i.product_id = p.product_id
WHERE i.stock_quantity < 20
ORDER BY st.city, i.stock_quantity;


-- revenue by product category
SELECT 
  p.category,
  SUM(s.revenue) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;
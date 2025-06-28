# 🚌 Supermarket Sales & Inventory Analysis — Capstone Project

This is an end-to-end **data analysis capstone project** demonstrating skills in **SQL** and **Power BI**. It uses a simulated supermarket dataset to design a database, insert sample data, run analytical SQL queries, and build a professional Power BI dashboard.

---

## 🧰 Technologies Used
- **MySQL** (via MySQL Workbench)
- **Power BI Desktop**

---

## 📂 Files in this Repository
- `schemasm.sql` — Contains all CREATE TABLE statements and sample INSERT data
- `queriessm.sql` — Contains analytical SQL queries for insights
- `supermarket_dashboard.pbix` — Power BI dashboard file with visuals, cards, and slicers

---

## 🗂️ Database Structure
This relational schema includes:
- **stores** — Store details (name, city, region)
- **products** — Product catalog (category, price)
- **suppliers** — Supplier information
- **inventory** — Store-level stock tracking
- **sales** — Transaction data (quantity, revenue, date)

---

## 🧪 SQL Analysis Included
The `queries.sql` file contains:
- 📌 **Total Sales and Revenue by Store**
SELECT s.store_id, st.city, SUM(s.quantity_sold) AS total_quantity, SUM(s.revenue) AS total_revenue
FROM sales s
JOIN stores st ON s.store_id = st.store_id
GROUP BY s.store_id, st.city
ORDER BY total_revenue DESC;

- 📌 **Monthly Sales Trend**
SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month, SUM(revenue) AS total_revenue
FROM sales
GROUP BY month
ORDER BY month;

- 📌 **Top 5 Best-Selling Products**
SELECT p.name, SUM(s.quantity_sold) AS total_quantity
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.name
ORDER BY total_quantity DESC
LIMIT 5;

- 📌 **Store Inventory Levels (Low Stock)**
SELECT st.city, p.name AS product, i.stock_quantity
FROM inventory i
JOIN stores st ON i.store_id = st.store_id
JOIN products p ON i.product_id = p.product_id
WHERE i.stock_quantity < 20
ORDER BY st.city, i.stock_quantity;

- 📌 **Revenue by Product Category**
SELECT p.category, SUM(s.revenue) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

---

## 📊 Power BI Dashboard Contents
The Power BI file (SupermarketDashboard.pbix) includes:
- **Charts & Graphs**
Revenue by Store Name (Bar graph)
Quantity Sold Per Product (Bar graph)
Revenue by Category (Pie chart)
Stock Quantity by Store Name and Category (Stacked/Clustered bar with Category in Legend)
- **Cards / KPIs**
Total Quantity Sold
Total Revenue
Number Of Transactions
Total Inventory
- **Slicers / Filters**
Store Name
Product Category

## How to Run This Project
**1. Set Up Database**
-Open MySQL Workbench

-Run schemasm.sql to create tables and insert sample data

-Run queriessm.sql to explore and analyze the database

**2. Open the Power BI Dashboard**
-Open SupermarketDashboard.pbix in Power BI Desktop

-Review the visuals, slicers, and KPIs

## Use Case
**This project demonstrates:**
-Relational database design
-SQL for real-world retail analytics
-Power BI for professional dashboard building
-Skills in joining, filtering, grouping, and visualizing business data

## This capstone is suitable for showcasing skills to:
-Data analysis clients (Upwork / Freelance)
-Hiring managers (LinkedIn portfolio)
-Employers seeking SQL and Power BI expertise

Author
Irman Sharma





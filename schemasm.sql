CREATE DATABASE supermarket_db;
USE supermarket_db;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10,2),
    supplier VARCHAR(50)
);

CREATE TABLE stores (
    store_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(50),
    region VARCHAR(50)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    store_id INT,
    product_id INT,
    stock_quantity INT,
    FOREIGN KEY (store_id) REFERENCES stores(store_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    store_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    revenue DECIMAL(10,2),
    FOREIGN KEY (store_id) REFERENCES stores(store_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    contact_info VARCHAR(100)
);


INSERT INTO products (name, category, unit_price, supplier) VALUES
('Classic T-Shirt', 'Clothing', 15.99, 'Alpha Textiles'),
('Running Shoes', 'Footwear', 49.99, 'Beta Sports'),
('Denim Jeans', 'Clothing', 39.99, 'Gamma Fashions'),
('Backpack', 'Accessories', 29.99, 'Delta Bags'),
('Sunglasses', 'Accessories', 19.99, 'Epsilon Optics'),
('Formal Shirt', 'Clothing', 25.99, 'Alpha Textiles'),
('Sneakers', 'Footwear', 44.99, 'Beta Sports'),
('Leather Belt', 'Accessories', 12.99, 'Delta Bags'),
('Hoodie', 'Clothing', 34.99, 'Gamma Fashions'),
('Flip Flops', 'Footwear', 9.99, 'Beta Sports'),
('Sports Cap', 'Accessories', 14.99, 'Delta Bags'),
('Casual Shorts', 'Clothing', 21.99, 'Gamma Fashions'),
('Ankle Socks', 'Footwear', 5.99, 'Beta Sports'),
('Wallet', 'Accessories', 17.99, 'Delta Bags'),
('Windbreaker Jacket', 'Clothing', 49.99, 'Alpha Textiles'),
('Trail Running Shoes', 'Footwear', 59.99, 'Beta Sports'),
('Beanie', 'Accessories', 8.99, 'Delta Bags'),
('Graphic Tee', 'Clothing', 18.99, 'Gamma Fashions'),
('Slide Sandals', 'Footwear', 12.99, 'Beta Sports'),
('Crossbody Bag', 'Accessories', 24.99, 'Delta Bags');


INSERT INTO stores (name, city, region) VALUES
('Downtown Mart', 'Mumbai', 'West'),
('City Center Store', 'Delhi', 'North'),
('South Plaza', 'Chennai', 'South'),
('Eastern Mall', 'Kolkata', 'East'),
('Central Bazaar', 'Hyderabad', 'South'),
('Uptown Outlet', 'Bengaluru', 'South'),
('Metro Retail', 'Pune', 'West'),
('Northside Shop', 'Jaipur', 'North');


INSERT INTO inventory (store_id, product_id, stock_quantity) VALUES
(1, 1, 50),
(1, 2, 30),
(1, 3, 40),
(1, 4, 25),
(1, 5, 20),
(1, 6, 35),
(1, 7, 28),
(1, 8, 18),
(1, 9, 22),
(1, 10, 15);

INSERT INTO inventory (store_id, product_id, stock_quantity) VALUES
(2, 2, 35),
(2, 4, 20),
(2, 6, 45),
(2, 8, 15),
(2, 10, 25),
(2, 12, 30),
(2, 14, 22),
(2, 16, 18),
(2, 18, 27),
(2, 20, 19);

INSERT INTO inventory (store_id, product_id, stock_quantity) VALUES
(3, 1, 28),
(3, 3, 32),
(3, 5, 19),
(3, 7, 24),
(3, 9, 21),
(3, 11, 17),
(3, 13, 35),
(3, 15, 23),
(3, 17, 20),
(3, 19, 26);

INSERT INTO inventory (store_id, product_id, stock_quantity) VALUES
(4, 2, 30),
(4, 4, 22),
(4, 6, 25),
(4, 8, 18),
(4, 10, 27),
(4, 12, 31),
(4, 14, 20),
(4, 16, 19),
(4, 18, 23),
(4, 20, 21);

INSERT INTO inventory (store_id, product_id, stock_quantity) VALUES
(5, 1, 33),
(5, 3, 26),
(5, 5, 22),
(5, 7, 29),
(5, 9, 24),
(5, 11, 20),
(5, 13, 35),
(5, 15, 27),
(5, 17, 19),
(5, 19, 22);

INSERT INTO inventory (store_id, product_id, stock_quantity) VALUES
(6, 2, 31),
(6, 4, 28),
(6, 6, 30),
(6, 8, 19),
(6, 10, 26),
(6, 12, 29),
(6, 14, 24),
(6, 16, 20),
(6, 18, 22),
(6, 20, 25);

INSERT INTO inventory (store_id, product_id, stock_quantity) VALUES
(7, 1, 29),
(7, 3, 27),
(7, 5, 23),
(7, 7, 21),
(7, 9, 18),
(7, 11, 20),
(7, 13, 28),
(7, 15, 24),
(7, 17, 22),
(7, 19, 26);

INSERT INTO inventory (store_id, product_id, stock_quantity) VALUES
(8, 2, 32),
(8, 4, 25),
(8, 6, 27),
(8, 8, 20),
(8, 10, 24),
(8, 12, 30),
(8, 14, 23),
(8, 16, 21),
(8, 18, 25),
(8, 20, 22);

INSERT INTO sales (store_id, product_id, quantity_sold, sale_date, revenue) VALUES
(1, 2, 3, '2025-01-05', 149.97),
(2, 5, 2, '2025-01-08', 39.98),
(3, 1, 5, '2025-01-12', 79.95),
(4, 7, 1, '2025-01-14', 44.99),
(5, 3, 2, '2025-01-17', 79.98),
(6, 10, 4, '2025-01-21', 39.96),
(7, 12, 3, '2025-01-24', 65.97),
(8, 4, 2, '2025-01-28', 59.98),
(1, 6, 1, '2025-02-01', 25.99),
(2, 8, 3, '2025-02-04', 38.97),
(3, 9, 2, '2025-02-07', 69.98),
(4, 11, 5, '2025-02-10', 89.95),
(5, 13, 2, '2025-02-14', 11.98),
(6, 15, 1, '2025-02-17', 49.99),
(7, 17, 4, '2025-02-20', 35.96),
(8, 19, 3, '2025-02-24', 38.97),
(1, 20, 2, '2025-02-28', 49.98),
(2, 14, 1, '2025-03-03', 17.99),
(3, 16, 2, '2025-03-07', 119.98),
(4, 18, 3, '2025-03-10', 56.97),
(5, 5, 1, '2025-03-13', 19.99),
(6, 7, 2, '2025-03-16', 89.98),
(7, 9, 1, '2025-03-19', 34.99),
(8, 3, 3, '2025-03-22', 119.97),
(1, 1, 2, '2025-03-25', 31.98),
(2, 6, 3, '2025-03-28', 77.97),
(3, 8, 1, '2025-04-01', 19.99),
(4, 10, 4, '2025-04-04', 39.96),
(5, 12, 2, '2025-04-07', 43.98),
(6, 14, 3, '2025-04-10', 53.97),
(7, 16, 2, '2025-04-13', 119.98),
(8, 18, 1, '2025-04-16', 18.99),
(1, 20, 3, '2025-04-19', 74.97),
(2, 2, 4, '2025-04-22', 199.96),
(3, 4, 1, '2025-04-25', 29.99),
(4, 6, 2, '2025-04-28', 51.98),
(5, 8, 3, '2025-05-01', 59.97),
(6, 10, 1, '2025-05-04', 9.99),
(7, 12, 2, '2025-05-07', 43.98),
(8, 14, 3, '2025-05-10', 53.97),
(1, 16, 1, '2025-05-13', 59.99),
(2, 18, 4, '2025-05-16', 75.96),
(3, 20, 2, '2025-05-19', 49.98),
(4, 1, 3, '2025-05-22', 47.97),
(5, 3, 2, '2025-05-25', 79.98),
(6, 5, 1, '2025-05-28', 19.99),
(7, 7, 2, '2025-06-01', 89.98),
(8, 9, 3, '2025-06-04', 104.97);

INSERT INTO sales (store_id, product_id, quantity_sold, sale_date, revenue) VALUES
(1, 11, 2, '2025-06-07', 35.98),
(2, 13, 3, '2025-06-10', 17.97),
(3, 15, 1, '2025-06-13', 49.99),
(4, 17, 4, '2025-06-16', 35.96),
(5, 19, 2, '2025-06-19', 25.98),
(6, 20, 3, '2025-06-22', 74.97),
(7, 2, 1, '2025-06-25', 49.99),
(8, 4, 2, '2025-06-28', 59.98),
(1, 6, 3, '2025-07-01', 77.97),
(2, 8, 1, '2025-07-04', 19.99),
(3, 10, 2, '2025-07-07', 19.98),
(4, 12, 3, '2025-07-10', 65.97),
(5, 14, 1, '2025-07-13', 17.99),
(6, 16, 2, '2025-07-16', 119.98),
(7, 18, 3, '2025-07-19', 56.97),
(8, 20, 1, '2025-07-22', 24.99),
(1, 3, 2, '2025-07-25', 79.98),
(2, 5, 3, '2025-07-28', 59.97),
(3, 7, 1, '2025-08-01', 44.99),
(4, 9, 2, '2025-08-04', 69.98),
(5, 11, 3, '2025-08-07', 53.97),
(6, 13, 1, '2025-08-10', 5.99),
(7, 15, 2, '2025-08-13', 99.98),
(8, 17, 3, '2025-08-16', 26.97),
(1, 19, 1, '2025-08-19', 12.99),
(2, 1, 2, '2025-08-22', 31.98),
(3, 4, 3, '2025-08-25', 89.97),
(4, 6, 1, '2025-08-28', 25.99),
(5, 8, 2, '2025-09-01', 39.98),
(6, 10, 3, '2025-09-04', 29.97),
(7, 12, 1, '2025-09-07', 21.99),
(8, 14, 2, '2025-09-10', 35.98),
(1, 16, 3, '2025-09-13', 179.97),
(2, 18, 1, '2025-09-16', 18.99),
(3, 20, 2, '2025-09-19', 49.98),
(4, 2, 3, '2025-09-22', 149.97),
(5, 4, 1, '2025-09-25', 29.99),
(6, 6, 2, '2025-09-28', 51.98),
(7, 8, 3, '2025-10-01', 59.97),
(8, 10, 1, '2025-10-04', 9.99),
(1, 12, 2, '2025-10-07', 43.98),
(2, 14, 3, '2025-10-10', 53.97),
(3, 16, 1, '2025-10-13', 59.99),
(4, 18, 4, '2025-10-16', 75.96),
(5, 20, 2, '2025-10-19', 49.98),
(6, 1, 3, '2025-10-22', 47.97);

INSERT INTO suppliers (name, contact_info) VALUES
('Alpha Textiles', 'alpha@example.com'),
('Beta Sports', 'beta@example.com'),
('Gamma Fashions', 'gamma@example.com'),
('Delta Bags', 'delta@example.com'),
('Epsilon Optics', 'epsilon@example.com');

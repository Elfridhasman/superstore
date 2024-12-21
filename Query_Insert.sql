-- Mengimpor Data ke Tabel Customers
INSERT INTO Customers (customer, zip, city, state)
SELECT DISTINCT customer, zip, city, state
FROM superstore_dataset_formatted;

-- Mengimpor Data ke Tabel Manufactory
INSERT INTO Manufactory (manufactory)
SELECT DISTINCT manufactory
FROM superstore_dataset_formatted;

-- Mengimpor Data ke Tabel Products
INSERT INTO Products (product_name, manufactory_id, segment, category, subcategory)
SELECT 
    s.product_name,
    m.manufactory_id,
    s.segment,
    s.category,
    s.subcategory
FROM superstore_dataset_formatted s
JOIN Manufactory m ON s.manufactory = m.manufactory;

-- Mengimpor Data ke Tabel Regions
INSERT INTO Regions (region)
SELECT DISTINCT region
FROM superstore_dataset_formatted;

-- Mengimpor Data ke Tabel Orders
INSERT INTO Orders (order_id, order_date, customer_id, product_id, region_id, sales, quantity, profit)
SELECT 
    s.order_id,
    s.order_date,
    MAX(c.customer_id) AS customer_id,
    MAX(p.product_id) AS product_id,
    MAX(r.region_id) AS region_id,
    s.sales,
    s.quantity,
    s.profit
FROM superstore_dataset_formatted s
LEFT JOIN Customers c ON s.customer = c.customer
LEFT JOIN Products p ON s.product_name = p.product_name
LEFT JOIN Regions r ON s.region = r.region
GROUP BY s.order_id, s.order_date, s.sales, s.quantity, s.profit;












-- Active: 1733409441847@@127.0.0.1@3306@superstore

-- Membuat Tabel Customers
CREATE TABLE Customers (
    customer_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    customer VARCHAR(255),
    zip VARCHAR(10),
    city VARCHAR(255),
    state VARCHAR(255)
);

-- Membuat Tabel Manufactory
CREATE TABLE Manufactory (
    manufactory_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    manufactory VARCHAR(255)
);

-- Membuat Tabel Products
CREATE TABLE Products (
    product_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    product_name VARCHAR(255),
    manufactory_id CHAR(36),
    segment VARCHAR(255),
    category VARCHAR(255),
    subcategory VARCHAR(255),
    FOREIGN KEY (manufactory_id) REFERENCES Manufactory(manufactory_id)
);

-- Membuat Tabel Regions
CREATE TABLE Regions (
    region_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    region VARCHAR(255)
);

-- Membuat Tabel Orders tanpa DEFAULT UUID untuk order_id
CREATE TABLE Orders (
    order_id CHAR(36) PRIMARY KEY,
    order_date DATE,
    customer_id CHAR(36),
    product_id CHAR(36),
    region_id CHAR(36),
    sales DECIMAL(10, 2),
    quantity INT,
    profit DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);

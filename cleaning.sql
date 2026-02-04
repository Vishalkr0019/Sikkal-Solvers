CREATE DATABASE retail_analytics;
USE retail_analytics;
 
 CREATE TABLE customer_details (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    email VARCHAR(100),
    loyalty_status VARCHAR(20),
    total_loyalty_points INT DEFAULT 0,
    last_purchase_date DATE
);

-- STORES
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    store_city VARCHAR(60),
    store_region VARCHAR(50),
    opening_date DATE
);

-- PRODUCTS
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_category VARCHAR(50),
    unit_price DECIMAL(10,2),
    current_stock_level INT
);

-- PROMOTIONS
CREATE TABLE promotion_details (
    promotion_id INT PRIMARY KEY,
    promotion_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    discount_percentage DECIMAL(5,2),
    applicable_category VARCHAR(50)
);

-- LOYALTY RULES
CREATE TABLE loyalty_rules (
    rule_id INT PRIMARY KEY,
    rule_name VARCHAR(100),
    points_per_unit_spend DECIMAL(6,2),
    min_spend_threshold DECIMAL(10,2),
    bonus_points INT
);

-- SALES HEADER
CREATE TABLE store_sales_header (
    transaction_id VARCHAR(30) PRIMARY KEY,
    customer_id INT,
    store_id INT,
    transaction_date DATETIME,
    total_amount DECIMAL(10,2),
    customer_phone BIGINT,

    FOREIGN KEY (customer_id) REFERENCES customer_details(customer_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
);

-- SALES LINE ITEMS
CREATE TABLE store_sales_line_items (
    line_item_id INT PRIMARY KEY,
    transaction_id VARCHAR(30),
    product_id INT,
    promotion_id INT,
    quantity INT,
    line_item_amount DECIMAL(10,2),

    FOREIGN KEY (transaction_id) REFERENCES store_sales_header(transaction_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (promotion_id) REFERENCES promotion_details(promotion_id)
);



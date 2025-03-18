/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
    Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

USE SalesDataWarehouse;
GO

IF OBJECT_ID ('bronze.customers' , 'U') IS NOT NULL
    DROP TABLE bronze.customers;

CREATE TABLE bronze.customers (
    customer_id NVARCHAR(50) PRIMARY KEY,
    customer_unique_id NVARCHAR(50),
    customer_zip_code_prefix INT,
    customer_city NVARCHAR(255),
    customer_state NVARCHAR(5)
);

IF OBJECT_ID ('bronze.geolocation' , 'U') IS NOT NULL
    DROP TABLE bronze.geolocation;

CREATE TABLE bronze.geolocation (
    geolocation_zip_code_prefix INT,
    geolocation_lat FLOAT,
    geolocation_lng FLOAT,
    geolocation_city NVARCHAR(255),
    geolocation_state NVARCHAR(5)
);

IF OBJECT_ID ('bronze.order_items' , 'U') IS NOT NULL
    DROP TABLE bronze.order_items;

CREATE TABLE bronze.order_items (
    order_id NVARCHAR(50),
    order_item_id INT,
    product_id NVARCHAR(50),
    seller_id NVARCHAR(50),
    shipping_limit_date DATETIME,
    price DECIMAL(10,2),
    freight_value DECIMAL(10,2),
    PRIMARY KEY (order_id, order_item_id)
);

IF OBJECT_ID ('bronze.orders' , 'U') IS NOT NULL
    DROP TABLE bronze.orders;

CREATE TABLE bronze.orders (
    order_id NVARCHAR(50) PRIMARY KEY,
    customer_id NVARCHAR(50),
    order_status NVARCHAR(50),
    order_purchase_timestamp DATETIME,
    order_approved_at DATETIME NULL,
    order_delivered_carrier_date DATETIME NULL,
    order_delivered_customer_date DATETIME NULL,
    order_estimated_delivery_date DATETIME,
    FOREIGN KEY (customer_id) REFERENCES bronze.customers(customer_id)
);

IF OBJECT_ID ('bronze.payments' , 'U') IS NOT NULL
    DROP TABLE bronze.payments;

CREATE TABLE bronze.payments (
    order_id NVARCHAR(50),
    payment_sequential INT,
    payment_type NVARCHAR(50),
    payment_installments INT,
    payment_value DECIMAL(10,2),
    PRIMARY KEY (order_id, payment_sequential),
    FOREIGN KEY (order_id) REFERENCES bronze.orders(order_id)
);

IF OBJECT_ID ('bronze.products' , 'U') IS NOT NULL
    DROP TABLE bronze.products;

CREATE TABLE bronze.products (
    product_id NVARCHAR(50) PRIMARY KEY,
    product_category NVARCHAR(255),
    product_name_length INT NULL,
    product_description_length INT NULL,
    product_photos_qty INT NULL,
    product_weight_g DECIMAL(10,2) NULL,
    product_length_cm DECIMAL(10,2) NULL,
    product_height_cm DECIMAL(10,2) NULL,
    product_width_cm DECIMAL(10,2) NULL
);

IF OBJECT_ID ('bronze.sellers' , 'U') IS NOT NULL
    DROP TABLE bronze.sellers;

CREATE TABLE bronze.sellers (
    seller_id NVARCHAR(50) PRIMARY KEY,
    seller_zip_code_prefix INT,
    seller_city NVARCHAR(255),
    seller_state NVARCHAR(5)
);



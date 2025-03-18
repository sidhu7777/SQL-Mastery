#  SQL Mastery: Learning, Data Warehousing & Sales Analytics  

##  Project Overview  
This project is a **comprehensive SQL initiative** that combines **learning materials, database architecture, and real-world analysis**. It is structured into **three key parts**:  

### **1 SQL Learning Guide**  
 A structured guide covering **SQL fundamentals to advanced topics**.  

### **2 Data Warehouse Development**  
 Creating a **structured database optimized for analytical queries**.  

### **3 Sales Analytics Project**  
 Performing **real-world customer & sales analysis** using SQL queries.  

This repository serves as both a **learning resource** and a **hands-on project** to apply SQL in a **business context**.  



---

## Dataset Download
**Download Dataset:** [Google Drive Link](YOUR_GOOGLE_DRIVE_LINK_HERE)

---

##  Dataset Overview
This project uses a structured **Sales Dataset** containing multiple tables related to customers, orders, products, and payments. The dataset is useful for learning **SQL queries, joins, aggregations, and data analysis**.

###  Dataset Tables & Columns

####  **Customers Table (`customers`)**
| Column Name                | Description |
|----------------------------|-------------|
| `customer_id`              | Unique customer identifier |
| `customer_unique_id`       | Unique identifier across multiple orders |
| `customer_zip_code_prefix` | Customer's zip code prefix |
| `customer_city`            | City of the customer |
| `customer_state`           | State of the customer |

####  **Geolocation Table (`geolocation`)**
| Column Name                 | Description |
|-----------------------------|-------------|
| `geolocation_zip_code_prefix` | Zip code prefix for location mapping |
| `geolocation_lat`           | Latitude of the location |
| `geolocation_lng`           | Longitude of the location |
| `geolocation_city`          | City name |
| `geolocation_state`         | State name |

####  **Order Items Table (`order_items`)**
| Column Name          | Description |
|----------------------|-------------|
| `order_id`          | Unique order ID |
| `order_item_id`     | Line item number in an order |
| `product_id`        | Identifier of the product in the order |
| `seller_id`         | Seller associated with the order |
| `shipping_limit_date` | Expected shipping deadline |
| `price`             | Price of the product |
| `freight_value`     | Shipping cost |

####  **Orders Table (`orders`)**
| Column Name                  | Description |
|------------------------------|-------------|
| `order_id`                   | Unique order identifier |
| `customer_id`                | Customer who placed the order |
| `order_status`               | Status of the order (delivered, canceled, etc.) |
| `order_purchase_timestamp`   | Timestamp when the order was placed |
| `order_approved_at`          | Timestamp when payment was approved |
| `order_delivered_carrier_date` | When the order was shipped by the carrier |
| `order_delivered_customer_date` | When the order reached the customer |
| `order_estimated_delivery_date` | Expected delivery date |

####  **Payments Table (`payments`)**
| Column Name          | Description |
|----------------------|-------------|
| `order_id`          | Associated order ID |
| `payment_sequential` | Number of payments for the order |
| `payment_type`      | Payment method (credit card, debit card, etc.) |
| `payment_installments` | Number of installments used in payment |
| `payment_value`     | Total payment amount |

####  **Products Table (`products`)**
| Column Name              | Description |
|--------------------------|-------------|
| `product_id`            | Unique product identifier |
| `product_category`      | Category of the product |
| `product_name_length`   | Length of the product name |
| `product_description_length` | Length of product description |
| `product_photos_qty`    | Number of product images |
| `product_weight_g`      | Weight of the product (grams) |
| `product_length_cm`     | Length of the product (cm) |
| `product_height_cm`     | Height of the product (cm) |
| `product_width_cm`      | Width of the product (cm) |

####  **Sellers Table (`sellers`)**
| Column Name               | Description |
|---------------------------|-------------|
| `seller_id`              | Unique seller identifier |
| `seller_zip_code_prefix` | Seller's location zip code prefix |
| `seller_city`            | City of the seller |
| `seller_state`           | State of the seller |






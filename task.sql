create database shravan;
use shravan;
CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  email VARCHAR(30),
  phone_number BIGINT(15),
  address VARCHAR(200),
  city VARCHAR(10),
  state VARCHAR(50),
  postal_code int(6),
  country VARCHAR(20)
);
CREATE TABLE products (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(100),
  description TEXT,
  category VARCHAR(50),
  price DECIMAL(10, 2),
  quantity_in_stock INT,
  manufacturer VARCHAR(100),
  release_date DATE,
  is_featured BOOLEAN,
  is_active BOOLEAN
);
CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATETIME,
  total_amount DECIMAL(10, 2),
  shipping_address VARCHAR(200),
  city VARCHAR(50),
  state VARCHAR(50),
  postal_code VARCHAR(10),
  country VARCHAR(50),
  is_completed BOOLEAN,
  is_paid BOOLEAN
);
CREATE TABLE employees (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  job_title VARCHAR(100),
  department VARCHAR(100),
  hire_date DATE,
  salary DECIMAL(10, 2),
  email VARCHAR(100),
  phone_number VARCHAR(15),
  address VARCHAR(200)
);
CREATE TABLE transactions (
  transaction_id INT,
  order_id INT,
  product_id INT,
  quantity INT,
  unit_price DECIMAL(10, 2),
  discount DECIMAL(5, 2),
  total_price DECIMAL(10, 2),
  transaction_date DATE,
  payment_method VARCHAR(50),
  is_successful BOOLEAN
);
desc customers;


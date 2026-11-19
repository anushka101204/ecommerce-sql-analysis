USE ecommerce_analytics;

INSERT INTO customers (first_name, last_name, email, city, country, signup_date) VALUES
('Aarav','Sharma','aarav@example.com','Delhi','India','2023-01-15'),
('Priya','Patel','priya@example.com','Mumbai','India','2023-02-20'),
('John','Smith','john@example.com','London','UK','2023-03-10'),
('Maria','Garcia','maria@example.com','Madrid','Spain','2023-04-05'),
('Wei','Chen','wei@example.com','Beijing','China','2023-05-12');

INSERT INTO categories (category_name, parent_category_id) VALUES
('Electronics', NULL),
('Fashion', NULL),
('Home', NULL),
('Books', NULL),
('Sports', NULL);

INSERT INTO products (product_name, category_id, unit_price, cost_price, stock_quantity) VALUES
('Wireless Earbuds', 1, 59.99, 25.00, 200),
('Smart Watch', 1, 199.99, 90.00, 100),
('Running Shoes', 2, 89.99, 40.00, 150),
('Cotton T-Shirt', 2, 19.99, 7.00, 500),
('Coffee Maker', 3, 79.99, 35.00, 80),
('SQL Cookbook', 4, 39.99, 18.00, 120),
('Yoga Mat', 5, 29.99, 12.00, 200),
('Bluetooth Speaker', 1, 49.99, 20.00, 150);

INSERT INTO orders (customer_id, order_date, status, shipping_cost) VALUES
(1, '2024-01-10 10:30:00', 'delivered', 5.99),
(2, '2024-01-15 14:20:00', 'delivered', 5.99),
(1, '2024-02-05 09:15:00', 'delivered', 0.00),
(3, '2024-02-20 16:45:00', 'delivered', 7.99),
(4, '2024-03-01 11:00:00', 'delivered', 5.99),
(2, '2024-03-15 13:30:00', 'delivered', 0.00),
(5, '2024-04-02 18:00:00', 'cancelled', 5.99),
(1, '2024-04-20 10:00:00', 'delivered', 5.99),
(3, '2024-05-05 15:00:00', 'delivered', 5.99),
(4, '2024-05-25 12:00:00', 'delivered', 0.00);

INSERT INTO order_items (order_id, product_id, quantity, unit_price, discount) VALUES
(1, 1, 2, 59.99, 0),
(1, 8, 1, 49.99, 10),
(2, 3, 1, 89.99, 5),
(2, 4, 3, 19.99, 0),
(3, 2, 1, 199.99, 0),
(4, 5, 1, 79.99, 10),
(4, 7, 2, 29.99, 0),
(5, 6, 1, 39.99, 0),
(6, 1, 1, 59.99, 0),
(8, 3, 1, 89.99, 0),
(9, 2, 1, 199.99, 5),
(10, 8, 2, 49.99, 0);

INSERT INTO payments (order_id, payment_method, amount, payment_date, status) VALUES
(1, 'credit_card', 157.97, '2024-01-10 10:35:00', 'success'),
(2, 'upi', 145.48, '2024-01-15 14:25:00', 'success'),
(3, 'paypal', 199.99, '2024-02-05 09:20:00', 'success'),
(4, 'credit_card', 131.97, '2024-02-20 16:50:00', 'success'),
(5, 'debit_card', 39.99, '2024-03-01 11:05:00', 'success'),
(6, 'upi', 59.99, '2024-03-15 13:35:00', 'success'),
(7, 'cod', 49.99, '2024-04-02 18:05:00', 'failed'),
(8, 'credit_card', 89.99, '2024-04-20 10:05:00', 'success'),
(9, 'paypal', 389.98, '2024-05-05 15:05:00', 'success'),
(10, 'upi', 99.98, '2024-05-25 12:05:00', 'success');

INSERT INTO reviews (product_id, customer_id, rating, review_text, review_date) VALUES
(1, 1, 5, 'Excellent sound quality!', '2024-01-20'),
(8, 1, 4, 'Good but battery could be better', '2024-01-22'),
(3, 2, 4, 'Comfortable running shoes', '2024-01-30'),
(2, 1, 5, 'Love my smart watch', '2024-02-15'),
(5, 3, 3, 'Average coffee maker', '2024-03-10'),
(6, 4, 5, 'Very useful SQL reference', '2024-03-20'),
(1, 2, 4, 'Solid earbuds for the price', '2024-03-25'),
(3, 1, 5, 'Best running shoes ever', '2024-04-30');

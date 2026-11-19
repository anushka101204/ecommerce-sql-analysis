-- Product Rating vs Sales
SELECT
    p.product_name,
    ROUND(AVG(r.rating), 2) AS avg_rating,
    COUNT(r.review_id) AS review_count,
    COALESCE(SUM(oi.quantity), 0) AS units_sold
FROM products p
LEFT JOIN reviews r ON p.product_id = r.product_id
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
HAVING review_count > 5
ORDER BY avg_rating DESC;

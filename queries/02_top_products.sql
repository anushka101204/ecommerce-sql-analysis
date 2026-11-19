-- Top 10 Products by Revenue
SELECT * FROM (
    SELECT
        p.product_name,
        c.category_name,
        SUM(oi.quantity) AS units_sold,
        SUM(oi.quantity * oi.unit_price * (1 - oi.discount/100)) AS total_revenue,
        RANK() OVER (ORDER BY SUM(oi.quantity * oi.unit_price) DESC) AS rank_no
    FROM order_items oi
    JOIN products p ON oi.product_id = p.product_id
    JOIN categories c ON p.category_id = c.category_id
    JOIN orders o ON oi.order_id = o.order_id
    WHERE o.status = 'delivered'
    GROUP BY p.product_id, p.product_name, c.category_name
) ranked
WHERE rank_no <= 10;

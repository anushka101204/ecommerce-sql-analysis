-- Category Revenue Share with Running Total
WITH cat_rev AS (
    SELECT
        c.category_name,
        SUM(oi.quantity * oi.unit_price) AS revenue
    FROM order_items oi
    JOIN products p ON oi.product_id = p.product_id
    JOIN categories c ON p.category_id = c.category_id
    JOIN orders o ON oi.order_id = o.order_id
    WHERE o.status = 'delivered'
    GROUP BY c.category_name
)
SELECT
    category_name,
    revenue,
    ROUND(revenue * 100.0 / SUM(revenue) OVER (), 2) AS pct_of_total,
    SUM(revenue) OVER (ORDER BY revenue DESC) AS running_total
FROM cat_rev
ORDER BY revenue DESC;

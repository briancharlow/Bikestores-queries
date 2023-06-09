--Create a view that shows the product details
--along with the total sales quantity and revenue
--for each product.

CREATE VIEW 
sales.product_sales_summary_view
AS
SELECT
    p.product_id,
    p.product_name,
    b.brand_name,
    c.category_name,
    p.model_year,
    p.list_price,
    SUM(oi.quantity) AS total_quantity,
    SUM(oi.quantity * oi.list_price) AS total_revenue
FROM
    production.products p
    JOIN production.brands b ON p.brand_id = b.brand_id
    JOIN production.categories c ON p.category_id = c.category_id
    JOIN sales.order_items oi ON p.product_id = oi.product_id
GROUP BY
    p.product_id,
    p.product_name,
    b.brand_name,
    c.category_name,
    p.model_year,
    p.list_price;



SELECT * FROM sales.product_sales_summary_view;



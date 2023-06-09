--Create a view that returns the total quantity and sales amount for each product.
CREATE VIEW sales.product_sales_view AS 
SELECT p.product_id, p.product_name, SUM(oi.quantity) AS total_quantity , 
SUM(oi.list_price*oi.quantity) AS total_sales_amount
FROM production.products p
LEFT JOIN sales.order_items oi ON p.product_id=oi.product_id
LEFT JOIN sales.orders o ON oi.order_id=o.order_id
WHERE o.order_status=4
GROUP BY p.product_id, p.product_name;



SELECT * FROM sales.product_sales_view;
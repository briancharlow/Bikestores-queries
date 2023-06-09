--Write a query to retrieve the list of orders along with the 
--customer name and staff name for each order
SELECT c.first_name, c.last_name, o.order_id, s.first_name, s.last_name
FROM sales.orders o
INNER JOIN sales.customers c ON c.customer_id = o.customer_id
INNER JOIN sales.staffs s ON s.store_id = o.store_id
GROUP BY o.order_id, c.first_name, c.last_name, s.first_name, s.last_name


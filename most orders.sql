SELECT c.first_name, c.last_name, c.customer_id, COUNT(o.order_id)
FROM sales.orders o
RIGHT JOIN sales.customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY COUNT(o.order_id) DESC
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;

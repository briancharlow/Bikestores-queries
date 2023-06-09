--Write a stored procedure that accepts a customer ID and 
--returns the total number of orders placed by that customer.
CREATE PROCEDURE GetTotalOrdersByCustomer
    @CustomerID INT,
    @TotalOrders INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT @TotalOrders = COUNT(*) 
    FROM sales.orders 
    WHERE customer_id = @CustomerID;

END;


--using the procedure 

DECLARE @CustomerID INT = 1;
DECLARE @TotalOrders INT;

EXEC GetTotalOrdersByCustomer 17, @TotalOrders OUTPUT;

SELECT @TotalOrders AS TotalOrders;


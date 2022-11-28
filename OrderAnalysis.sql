USE Northwind
SELECT 
COUNT(*) as NumberOfOrders, CustomerID 
FROM
dbo.Orders
GROUP BY 
CustomerID
ORDER BY
NumberOfOrders DESC

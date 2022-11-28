USE Northwind
SELECT
c.CustomerID, c.CompanyName, c.ContactName, c.City, o.CustomerID, o.OrderDate, o.OrderID
FROM dbo.Customers AS c
JOIN dbo.Orders as o
ON c.CustomerID = o.CustomerID
WHERE c.Country = 'UK'
ORDER BY c.CompanyName, o.OrderDate
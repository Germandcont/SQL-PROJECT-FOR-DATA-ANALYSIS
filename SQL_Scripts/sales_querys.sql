/* Total Sales */

SELECT SUM(UnitPrice * OrderQty) AS TotalSales
FROM SalesLT.SalesOrderDetail;


/* Total Orders */

SELECT COUNT(*) AS TotalOrders
FROM SalesLT.SalesOrderHeader; 


/* Sales by country ($) */

SELECT 
    a.CountryRegion AS Country,
    ROUND(SUM(od.UnitPrice * od.OrderQty), 1) AS Sales
FROM 
    SalesLT.SalesOrderHeader AS oh
    JOIN SalesLT.CustomerAddress AS ca ON oh.CustomerID = ca.CustomerID
    JOIN SalesLT.Address AS a ON ca.AddressID = a.AddressID
    JOIN SalesLT.SalesOrderDetail AS od ON oh.SalesOrderID = od.SalesOrderID
GROUP BY 
    a.CountryRegion
ORDER BY 
    Sales DESC;


/* Number of sales by client location */

SELECT 
    a.CountryRegion AS Country,
    COUNT(DISTINCT c.CustomerID) AS TotalCustomers,
    COUNT(DISTINCT h.SalesOrderID) AS TotalSales
FROM 
    SalesLT.Address a
LEFT JOIN 
    SalesLT.CustomerAddress ca ON a.AddressID = ca.AddressID
LEFT JOIN 
    SalesLT.Customer c ON ca.CustomerID = c.CustomerID
LEFT JOIN 
    SalesLT.SalesOrderHeader h ON c.CustomerID = h.CustomerID
GROUP BY 
    a.CountryRegion
ORDER BY 
    a.CountryRegion;

/* Here I can see that the company has customers from Canada but they havent bought any product */ 

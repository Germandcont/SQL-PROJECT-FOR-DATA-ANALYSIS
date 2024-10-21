/* Total products */

SELECT COUNT(DISTINCT ProductID) AS NumberOfProducts
FROM SalesLT.Product
WHERE DiscontinuedDate IS NULL;


/* Total of different products sold */

SELECT COUNT(DISTINCT p.ProductID) AS NumberOfProducts
FROM SalesLT.Product p
JOIN SalesLT.SalesOrderDetail sod ON p.ProductID = sod.ProductID
JOIN SalesLT.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID;

/* FROM 295 PRODUCTS, THE COMPANY HAS ONLY SOLD 142 IN THIS PERIOD OF TIME */


/* Top 5 products by sales */

SELECT TOP 5 p.Name AS ProductName, SUM(od.OrderQty) AS TotalSold
FROM SalesLT.Product AS p
JOIN SalesLT.SalesOrderDetail AS od ON p.ProductID = od.ProductID
GROUP BY p.Name
ORDER BY TotalSold DESC;


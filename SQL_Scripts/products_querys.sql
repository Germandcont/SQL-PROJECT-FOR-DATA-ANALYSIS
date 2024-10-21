/* Total Products */

SELECT COUNT(DISTINCT p.ProductID) AS NumberOfProducts
FROM SalesLT.Product p
JOIN SalesLT.SalesOrderDetail sod ON p.ProductID = sod.ProductID
JOIN SalesLT.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID;


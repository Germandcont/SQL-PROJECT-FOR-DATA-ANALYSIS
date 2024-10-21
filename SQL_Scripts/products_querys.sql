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
Basic Exploratory Analysis

# SALES 

/* Total Sales */

SELECT SUM(UnitPrice * OrderQty) AS TotalSales
FROM SalesLT.SalesOrderDetail;

/* Total Orders */

SELECT COUNT(*) AS TotalOrders
FROM SalesLT.SalesOrderHeader;



/* Sales by country */

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



# Sales by Country (Esto me dará solo USA Y U.KIN)
Clients per Country 
Sales by canada clients = 0 












/*** CLIENTS ***/


/* Cual fue el producto mas vendido durante 2023? */

/*  */

/*  */

/*  */

/*  */

/*  */
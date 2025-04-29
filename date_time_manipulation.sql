USE SalesDB;
SELECT 
    OrderID, 
    ShipAddress, 
    CreationTime, 
    DAY(CreationTime) AS Creation_Day,
    MONTH(CreationTime) AS Creation_Month,
    YEAR(CreationTime) AS Creation_Year,
    (GETDATE()) AS Today 
        FROM Sales.orders;

SELECT 
    OrderID, 
    ShipAddress, 
    CreationTime, 
    DATEPART("DD",CreationTime) AS Creation_Day,
    DATEPART("MM",CreationTime) AS Creation_Month,
    DATEPART("YY",CreationTime) AS Creation_Year,
    (GETDATE()) AS Today 
        FROM Sales.orders;

SELECT 
    OrderID, 
    ShipAddress, 
    CreationTime, 
    DATENAME(DAY,CreationTime) AS Creation_Day,
    DATENAME(WEEKDAY, CreationTime) AS Weekday,
    DATENAME(MONTH,CreationTime) AS Creation_Month,
    DATENAME(YEAR,CreationTime) AS Creation_Year,
    (GETDATE()) AS Today 
        FROM Sales.orders;

-- How many orders were placed in each month

SELECT DATENAME(MONTH, OrderDate) AS OrderDate,
    COUNT(*) AS TotalOrders
        FROM Sales.Orders
            GROUP BY DATENAME(MONTH, OrderDate);

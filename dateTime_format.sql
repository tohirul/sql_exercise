Use SalesDB;

SELECT
    OrderID, 
    OrderDate, 
    FORMAT(OrderDate, 'dd') AS Day, 
    FORMAT(OrderDate, 'ddd') AS WeekdayShort,
    FORMAT(OrderDate, 'dddd') AS Weekday
    FROM Sales.Orders;
                                                         

SELECT
    OrderID, 
    OrderDate, 
    FORMAT(OrderDate, 'MM') AS Month, 
    FORMAT(OrderDate, 'MMM') AS MonthShortName,
    FORMAT(OrderDate, 'MMMM') AS MonthName
    FROM Sales.Orders;


SELECT
    OrderID, 
    OrderDate, 
    FORMAT(OrderDate, 'MM-dd-yyyy') AS USA_Format, 
    FORMAT(OrderDate, 'dd-MM-yyyy') AS Euro_Format
    FROM Sales.Orders;

-- Show creation time using the following format
-- Day Wed Jan Q1 2025 12:34:56 PM

SELECT 
    OrderID, 
    CreationTime,
    DAY(CreationTime) as Day,
    FORMAT(CreationTime, 'ddd') as WeekDay,
    DATENAME(Month, CreationTime) AS month,
    DATENAME(Quarter,CreationTime) AS Quarter,
    YEAR(CreationTime) AS Year,
    FORMAT(CreationTime, 'hh:mm:ss tt') AS Time
    FROM Sales.Orders


-- Date Aggregation Using Format
SELECT 
    FORMAT(OrderDate, 'MMM yy') AS OrderDate, 
    COUNT(*) AS TotalOrders 
    FROM Sales.Orders
        GROUP BY FORMAT(OrderDate, 'MMM yy');
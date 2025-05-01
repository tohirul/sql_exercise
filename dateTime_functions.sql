USE SalesDB;

SELECT orderID, OrderDate, ShipDate, CreationTime, YEAR(CreationTime) AS year FROM Sales.Orders;
SELECT orderID, OrderDate, ShipDate, CreationTime, MONTH(CreationTime) AS month FROM Sales.Orders;
SELECT orderID, OrderDate, ShipDate, CreationTime, Day(CreationTime) AS date FROM Sales.Orders;

-- How many orders placed each year
SELECT COUNT(*) AS TotalOrders, YEAR(OrderDate) AS year FROM Sales.Orders GROUP By YEAR(OrderDate);

-- How many orders were placed each month
SELECT MONTH(orderDate) AS month, COUNT(*) AS TotalOrders FROM Sales.Orders GROUP BY MONTH(OrderDate);

-- How many orders were placed each month ( by name )
SELECT DATENAME(month, OrderDate) AS orderMonth, COUNT(*) AS TotalOrders FROM Sales.Orders GROUP BY DATENAME(month, OrderDate);


SELECT * FROM Sales.Orders WHERE MONTH( OrderDate) = 2;
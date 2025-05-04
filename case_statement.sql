USE SalesDB;

SELECT 
    Tier,
    SUM(Sales) AS TotalSales,
    COUNT(Sales) SalesCount
    FROM (
        SELECT 
            OrderID,
            Sales,
            Quantity,
            CASE
                WHEN Sales >= 50 THEN 'High'
                WHEN Sales >= 30 THEN 'Normal'
                ELSE 'Low'
            END Tier
            FROM Sales.Orders
    )t GROUP BY Tier
    ORDER BY TotalSales DESC;


SELECT EmployeeID, 
    FirstName, LastName, Department,
    CASE Gender
        WHEN 'M' THEN 'Male'
        WHEN 'F' THEN 'Female'
        ElSE 'N/A'
    END Gender, Salary
FROM Sales.Employees;

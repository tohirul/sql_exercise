Use SalesDB;

SELECT
    CustomerID,
    Score,
    ISNULL(Score, 0) AS Abs_Score,
    AVG(Score) OVER() Average,
    AVG(ISNULL(Score, 0)) OVER() Average_Score
        FROM Sales.Customers;                                       


SELECT
    CustomerID, 
    COALESCE(FirstName,'')+ ' ' + ISNULL(LastName,'') as Names 
        FROM Sales.Customers;


SELECT 
    CustomerID, 
    COALESCE(FirstName, '') + ' ' + ISNULL(LastName, '') AS Names, 
    Score, 
    Bonus, 
    ISNULL(Score, 0) + Bonus AS Total_Score
FROM (
    SELECT 
        CustomerID, 
        FirstName, 
        LastName, 
        Score, 
        CAST(RAND(CHECKSUM(NEWID())) * 10 AS DECIMAL(10,2)) AS Bonus
    FROM Sales.Customers
) AS sub;


SELECT OrderID, Quantity, Sales, Sales/NullIF(Quantity,0) as PricePerProduct FROM Sales.Orders


SELECT * FROM Sales.Customers WHERE Score IS NULL;
SELECT * FROM Sales.Customers WHERE Score IS NOT NULL;


SELECT * FROM Sales.Customers AS C
    LEFT JOIN Sales.Orders AS O ON C.CustomerID = O.CustomerID
        WHERE o.CustomerID IS NULL;
















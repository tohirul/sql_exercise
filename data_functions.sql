USE SalesDB;
-- Functions
    -- Row Level Functions  
        -- String Functions
        -- Number Functions
        -- Date and Time Functions
        -- Null Functions
        -- Case Statement   
    -- Aggregation and Analytical Functions


-- Manipulation Functions
SELECT 
    CONCAT(FirstName,' ', LastName) AS Name,
    LOWER(CONCAT(FirstName, LastName,'-',CustomerID)) AS Username,                                                                                                  
    Upper(Country) AS Country
    FROM Sales.Customers;

SELECT * FROM Sales.Customers               

SELECT 'report.txt' AS old_filename,
    REPLACE('report.txt', '.txt', '.csv') AS new_filename;

SELECT *, CONCAT(FirstName, ' ' ,LastName) AS FullName FROM Sales.Customers
SELECT (CONCAT(TRIM(FirstName), TRIM(LastName))) AS username, LEN(CONCAT(FirstName,LastName)) AS len_name, UPPER(Country) AS country_upper FROM Sales.Customers;



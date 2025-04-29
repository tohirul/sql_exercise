USE MyDatabase;

-- INNER JOIN on customer and order table
SELECT 
    c.id, 
    c.first_name,
    c.country, 
    c.score, 
    o.order_id, 
    o.sales, 
    o.order_date 
    FROM customers AS c
        INNER Join orders AS o 
            ON c.id = o.customer_id
;

-- LEFT JOIN ( Get all customers along with their orders including those without their orders )
SELECT 
    c.id, 
    c.first_name,
    c.score, 
    o.order_id, 
    o.sales, 
    o.order_date 
    FROM customers AS c
        LEFT JOIN orders AS o
            on c.id = o.customer_id
;

-- RIGHT JOIN  ( Get all customers along with their orders including those without matching customers )
SELECT * 
    FROM customers AS c
        RIGHT JOIN orders AS o
            ON c.id = o.customer_id
;

-- FULL JOIN ( Get all customers and all orders even if there is no match )
SELECT *
    FROM customers AS c 
        FULL JOIN orders AS o
            ON c.id = o.customer_id
;

-- LEFT ANTI JOIN ( Get all customers without matching order )
SELECT *
    FROM customers AS c
        LEFT JOIN orders as o
            ON c.id = o.customer_id
                WHERE o.customer_id IS NULL
;

-- RIGHT ANTI JOIN ( Get all orders without matching customer )
SELECT *
    FROM customers AS c
        RIGHT JOIN orders AS o 
            ON c.id = o.customer_id
                WHERE c.id IS NULL
;

-- FULL ANTI JOIN ( Get all customers And orders without matching )
SELECT *
    FROM customers AS c 
        FULL JOIN orders AS o 
            ON c.id = o.customer_id
                WHERE c.id IS NULL 
                OR o.customer_id IS NULL
;

USE SalesDB;

SELECT 
    FirstName,
    LastName 
    FROM Sales.Customers
Union
SELECT
    FirstName,
    LastName
    From Sales.Employees
ORDER BY FirstName DESC
;
-- Orders data stored in a separate tables ( Orders and OrdersArchive )
-- Combine all orders data into one report without duplicates

SELECT
    'Orders' AS sourceTable,
    OrderID, 
    ProductID, 
    CustomerID, 
    SalesPersonID, 
    OrderDate, 
    OrderStatus 
    FROM Sales.Orders 
UNION
SELECT
    'OrdersArchive' AS sourceTable,
    OrderID, 
    ProductID, 
    CustomerID, 
    SalesPersonID, 
    OrderDate, 
    OrderStatus 
    FROM Sales.OrdersArchive
Order BY OrderID ASC
;

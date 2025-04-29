/* --- */

USE MyDatabase;

-- show all from table

/*
SELECT *
 FROM customers;

SELECT *
 FROM orders;
*/

-- show tap results from table

/*
SELECT TOP(3) *
 FROM customers;

SELECT TOP(3)
    order_id,
    customer_id,
    sales
 FROM orders; 
*/

-- show selected columns from table

/*
SELECT TOP(3)
    id, 
    first_name,
    country
 FROM customers;

SELECT 
    order_id,
    customer_id,
    sales
 FROM orders;
*/ 

-- show filtered data according to condition

/*
SELECT *
 FROM customers
 WHERE score >= 350;

SELECT * 
 FROM orders 
 WHERE sales >= 20;
*/

-- show ordered data (sort)

/*
SELECT *
 FROM customers 
 ORDER BY score DESC;

SELECT *
 FROM orders 
 ORDER BY sales ASC;

-- show ordered data (multiple sort)

SELECT * 
 FROM customers
 ORDER BY country ASC, score ASC;
*/

-- show grouped data (using sum, alias and multiple conditions)

/*
SELECT * FROM customers;

SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
 FROM customers 
 WHERE score > 400
 GROUP BY country 
 HAVING SUM(score) > 400
 ORDER BY total_score DESC;
*/

-- show grouped data (using avg, alias and multiple conditions)

/*
SELECT * FROM customers;

SELECT 
    country,
    AVG(score) AS average_score
 FROM customers 
 WHERE score != 0 
 GROUP BY country
 HAVING AVG(score) > 430
 ORDER BY average_score DESC;
*/

-- show grouped data (using distinct, sum, avg, multiple conditions and sort)


SELECT DISTINCT 
    country,
    SUM(score) AS total_score, 
    AVG(score) AS avg_score 
    FROM customers 
        WHERE score > 0
        GROUP BY country
        HAVING AVG(score) > 430
        ORDER BY SUM(score) DESC;


-- show top data (sorted)

/*
SELECT TOP(3) *
 FROM customers 
 ORDER BY score DESC;

SELECT TOP(2) *
 FROM orders
 ORDER BY order_date DESC;
*/

SELECT DISTINCT country FROM customers;
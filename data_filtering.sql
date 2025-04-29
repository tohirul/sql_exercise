USE MyDatabase;

-- find customers who scored more than 300
SELECT * FROM customers WHERE score > 300;

-- find customers who are from USA and scored less than 500
SELECT * FROM customers WHERE country = 'USA' AND score < 500;

-- find customers who scored between 500 to 1000
SELECT * FROM customers WHERE score BETWEEN 500 AND 1000;

-- find customer who are from Germany
SELECT * FROM customers WHERE country = 'Germany';

-- find customers who scored more or equal to 500
SELECT * FROM customers WHERE score >= 500;

-- find top scorers from each country
SELECT * 
  FROM customers c
    WHERE score = (
      SELECT MAX(score) 
      FROM customers 
      WHERE country = c.country
    )
;

-- find customers who scored same amount as Martin
SELECT *
  FROM customers c
    WHERE score = (
      SELECT score 
      FROM customers 
      WHERE first_name = 'Martin'
    )
;

-- retrieve all customers who are from "USA" and have score greater than 400
SELECT *
  FROM customers
    WHERE country = 'USA' 
    AND score > 400
;

-- find customers whose score falls in the range between 500 - 1000
SELECT * 
  FROM customers 
    WHERE score 
    BETWEEN 500 AND 1000
;

-- list coustomers who are customers from Germany and UK
SELECT * 
  FROM customers 
    WHERE country
    IN('Germany', 'UK')
;

-- find customers whose name starts with M
SELECT * 
  FROM customers 
    WHERE first_name 
    LIKE('M%')
;

-- find customers whose name contains L
SELECT * 
  FROM customers
    WHERE first_name 
    LIKE('%L%')
;


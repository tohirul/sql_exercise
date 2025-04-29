USE SalesDB;       

-- SELECT * FROM Sales.Employees;
-- SELECT * FROM Sales.Products;

-- CREATE TABLE Sales.DiscountProducts (
--     id int PRIMARY KEY,
--     name VARCHAR(100),
--     originalPrice DECIMAL(10,2),
--     discountPercent INT,
--     discountedPrice DECIMAL(10,2)
-- )

-- INSERT INTO Sales.DiscountProducts (id, name, originalPrice, discountPercent, discountedPrice)
-- VALUES
-- (1, 'Laptop', 899.99, 10, ROUND(899.99 - (899.99 * 10 / 100), 2)),
-- (2, 'Smartphone', 499.49, 15, ROUND(499.49 - (499.49 * 15 / 100), 2)),
-- (3, 'Headphones', 99.95, 5, ROUND(99.95 - (99.95 * 5 / 100), 2)),
-- (4, 'Monitor', 199.99, 20, ROUND(199.99 - (199.99 * 20 / 100), 2)),
-- (5, 'Keyboard', 49.99, 0, ROUND(49.99 - (49.99 * 0 / 100), 2));

SELECT * FROM Sales.DiscountProducts;

-- Round the discounted price to the nearest whole number.
SELECT name, discountedPrice, ROUND(discountedPrice, 0) AS NewdiscountedPrice  FROM Sales.DiscountProducts;

-- Show the ceiling and floor of each product’s discounted price.
SELECT name, discountedPrice, CEILING(discountedPrice) AS MaxPrice, FLOOR(discountedPrice) AS MinPrice FROM Sales.DiscountProducts;

-- Calculate how much the user saved on each product.
SELECT name, originalPrice, discountedPrice, originalPrice-discountedPrice AS savedMoney FROM Sales.DiscountProducts;

-- Display the absolute savings difference from a baseline of $100.
SELECT name, originalPrice, discountedPrice, ABS((originalPrice-discountedPrice)-100) AS savingsGap FROM Sales.DiscountProducts;

-- Find the square root of the discounted price.
SELECT name, SQRT(discountedPrice) AS rootPrice FROM Sales.DiscountProducts

-- Get the remainder when the original price is divided by the discount percent.
SELECT name, originalPrice % discountPercent AS price_mod_discount FROM Sales.DiscountProducts WHERE discountPercent != 0;

-- Show the natural logarithm of the original price.
SELECT name, originalPrice, LOG(originalPrice) as NaturalPrice FROM Sales.DiscountProducts;

SELECT product_name, category,
       SUM(quantity * price) AS total_price
FROM products
GROUP BY product_name, category;

SELECT 
    SUM(quantity) AS total_quantity,
    AVG(price) AS average_price,
    MAX(price) AS highest_price,
    MIN(price) AS lowest_price
FROM products;


SELECT category, 
       COUNT(product_id) AS product_count
FROM products
GROUP BY category;

SELECT category, 
       AVG(price) AS average_price
FROM products
GROUP BY category;

SELECT 
    category,
    SUM(quantity * price) AS total_price
FROM products
GROUP BY category
HAVING SUM(quantity * price) > 500;
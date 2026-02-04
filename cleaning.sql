create database retail
use retail

select *
from products

#finding duplicates
SELECT product_id, COUNT(*) AS count
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;

#deleing duplicates
SELECT *
FROM products
WHERE product_id IN (
    SELECT product_id
    FROM products
    GROUP BY product_id
    HAVING COUNT(*) > 1
);

UPDATE products
SET product_name = REGEXP_REPLACE(product_name, '[^a-zA-Z ]', '');


#Query 1
USE sql_store;
SELECT*
FROM customers
-- WHERE customer_ID=1
ORDER BY first_name

#Query 2
SELECT last_name,first_name,points,(points+10)*100
AS discount_factor
FROM customers; 

SELECT SUM(points+10)*100 AS discount_factor
FROM customers;

--  Task 2 return all products & show columns; name, unit price, new column called new price based on the expression (unit price * 1.1). show orginal price and the new price-- 

select* 
from products;

select name, unit_price, unit_price*1.1
AS new_price
from products;

-- Task 3 customers with a birth date of > 1990-01-01--

SELECT*
FROM customers
WHERE birth_date > '1990-01-01';

-- Task 4 select sql inventory and write a query to find out the name of the products with the most amount of stocks--

SELECT*
FROM PRODUCTS
order by quantity_in_stock DESC;

-- Task 5 write a query to find out the name of the most expensive product--

SELECT*
FROM products
ORDER BY unit_price DESC;

--  Task 6 write a query to find out the first name, last name, address and the birthdate of the oldest customer--

select first_name, last_name, address, birth_date
FROM customers
WHERE birth_date = (
    SELECT MIN(birth_date)
    FROM customers
);





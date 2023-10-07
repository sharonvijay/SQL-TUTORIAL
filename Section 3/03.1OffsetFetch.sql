/*Section 3. Limiting rows */

/*SQL Server OFFSET FETCH */

SELECT
product_name,
list_price
FROM
production.products
ORDER BY
list_price,
product_name

/* SKIP FIRST 10 ROWS */

SELECT
product_name,
list_price
FROM
production.products
ORDER BY
list_price,
product_name
OFFSET 10 ROWS

/* SKIP FIRST 10 ROWS AND FETCH THE 10 */

SELECT
product_name,
list_price
FROM
production.products
ORDER BY
list_price,
product_name
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY

/* SELECT THE TOP 10 expensive products */

SELECT
product_name,
list_price
FROM
production.products
ORDER BY
list_price desc,
product_name asc
OFFSET 0 ROWS
FETCH FIRST 10 ROWS ONLY
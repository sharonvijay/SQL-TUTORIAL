/*Section 4. Filtering data */

/*SQL Server SELECT DISTINCT*/

/*A) DISTINCT one column example */

SELECT DISTINCT
city
FROM
sales.customers
ORDER BY
city

/*B) DISTINCT multiple columns example*/

SELECT DISTINCT
city,[state]
FROM
sales.customers
ORDER BY
city

/*C) DISTINCT with null values example*/

SELECT DISTINCT
phone
FROM
sales.customers
ORDER BY
phone

/* DISTINCT vs. GROUP BY */

SELECT
city,[state],zip_code
FROM
sales.customers
GROUP BY
city,[state],zip_code
ORDER BY
city,[state],zip_code

SELECT DISTINCT
city,[state],zip_code
FROM
sales.customers
ORDER BY
city,[state],zip_code
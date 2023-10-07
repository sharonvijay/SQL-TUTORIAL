/* SQL Server SELECT */

/*A) SQL Server SELECT – retrieve some columns of a table example*/

SELECT
first_name,
last_name,
FROM
sales.customers;

SELECT
first_name,
last_name,
email
FROM
sales.customers;

/*B) SQL Server SELECT – retrieve all columns from a table example*/

SELECT
*
FROM
sales.customers;

/*C) SQL Server SELECT – sort the result set*/

SELECT
*
FROM
sales.customers
WHERE
state = 'CA'

/*D) SQL Server SELECT – group rows into groups example*/

SELECT 
city,
count(*)
FROM
sales.customers
WHERE 
state = 'CA'
GROUP BY
city
ORDER BY
city

/*E) SQL Server SELECT – filter groups example*/

SELECT
city,
COUNT(*)
FROM
sales.customers
WHERE
state = 'CA'
GROUP  BY
city
HAVING 
COUNT(*) > 10
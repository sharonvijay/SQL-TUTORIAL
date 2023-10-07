/*Section 2. Sorting data */

/*A) Sort a result set by one column in ascending order*/

SELECT
first_name,
last_name
FROM
sales.customers
ORDER BY
first_name

/*B) Sort a result set by one column in descending order */

SELECT
first_name,
last_name
FROM
sales.customers
ORDER BY
first_name DESC

/*C) Sort a result set by multiple columns */

SELECT
first_name,
last_name
FROM
sales.customers
ORDER BY
city,
first_name

/*D) Sort a result set by multiple columns and different orders */

SELECT
first_name,
last_name
FROM
sales.customers
ORDER BY
city DESC,
first_name ASC;


/*E) Sort a result set by a column that is not in the select list */

SELECT
city,
first_name,
last_name
FROM
sales.customers
ORDER BY
[state];


/*F) Sort a result set by an expression */

SELECT
first_name,
last_name
FROM
sales.customers
ORDER BY
LEN(first_name) DESC
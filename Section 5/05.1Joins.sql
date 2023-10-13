/* Section 5. Joining tables */

/* SQL Server Joins */

CREATE SCHEMA hr;
GO

CREATE TABLE hr.candidates(
    id INT PRIMARY KEY IDENTITY,
    fullname VARCHAR(100) NOT NULL
);

CREATE TABLE hr.employees(
    id INT PRIMARY KEY IDENTITY,
    fullname VARCHAR(100) NOT NULL
);

INSERT INTO 
    hr.candidates(fullname)
VALUES
    ('John Doe'),
    ('Lily Bush'),
    ('Peter Drucker'),
    ('Jane Doe');


INSERT INTO 
    hr.employees(fullname)
VALUES
    ('John Doe'),
    ('Jane Doe'),
    ('Michael Scott'),
    ('Jack Sparrow'); 

SELECT
c.id candidate_id,
c.fullname candidate_name
FROM 
hr.candidates c

SELECT 
e.id employee_id,
e.fullname employee_name
FROM 
hr.employees e

/* SQL Server Inner Join */

SELECT 
c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
FROM 
hr.candidates c
INNER JOIN hr.employees e
ON c.fullname = e.fullname


/* SQL Server Left Join */

SELECT 
c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
FROM 
hr.candidates c
LEFT JOIN hr.employees e
ON c.fullname = e.fullname


SELECT 
c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
FROM 
hr.candidates c
LEFT JOIN hr.employees e
ON c.fullname = e.fullname
WHERE 
e.id is NULL


/* SQL Server Right Join */

SELECT 
c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
FROM 
hr.candidates c
RIGHT JOIN hr.employees e
ON c.fullname = e.fullname


SELECT 
c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
FROM 
hr.candidates c
RIGHT JOIN hr.employees e
ON c.fullname = e.fullname
WHERE 
c.id is NULL

/* SQL Server full join */

SELECT 
c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
FROM 
hr.candidates c
FULL JOIN hr.employees e
ON c.fullname = e.fullname

SELECT 
c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
FROM 
hr.candidates c
FULL JOIN hr.employees e
ON c.fullname = e.fullname
WHERE
c.id is NULL OR e.id is NULL

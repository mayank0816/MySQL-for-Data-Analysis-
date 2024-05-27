-- STRING FUNCTIONS -- LENGTH Function

SELECT LENGTH('Mayank');
SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY LENGTH(first_name);

-- UPPER FUNCTION--
SELECT UPPER('mayank');
SELECT LOWER('RAJPUT');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
ORDER BY 1;


-- TRIM FUNCTION--
SELECT RTRIM('          sky             ');

SELECT LOWER(first_name), 
LOWER(LEFT(first_name,4)),
RIGHT(first_name,4),
SUBSTRING(first_name,3,2),
SUBSTRING(birth_date,6,2) AS birth_month
FROM
employee_demographics;


-- REPLACE--
SELECT first_name, REPLACE(first_name,'a','z')
FROM
employee_demographics;

-- LOCATE FUNCTION--
SELECT LOCATE('x','Alexander')
;
SELECT first_name, LOCATE('An',first_name)
FROM
employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, ' ',last_name) AS full_name
FROM
employee_demographics;
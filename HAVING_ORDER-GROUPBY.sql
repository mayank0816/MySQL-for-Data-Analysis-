SELECT *
FROM employee_demographics;

SELECT gender, AVG(age), MAX(age), MIN(age), SUM(age), COUNT(age)
FROM employee_demographics 
GROUP BY gender;


SELECT * 
FROM employee_salary;

SELECT occupation, salary
FROM
employee_salary
GROUP BY occupation, salary;


-- ORDER BY-- 
SELECT occupation,salary 
FROM 
employee_salary ORDER BY occupation DESC,salary ASC;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;

-- HAVING VS GROUP BY--
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING avg(age) > 40;


SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary)>75000
;
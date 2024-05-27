-- SUBQUERIES-- Queries within queries
SELECT * 
FROM employee_demographics 
WHERE employee_id IN 
					(SELECT employee_id 
                    FROM employee_salary
                    WHERE dept_id=1);



SELECT first_name, salary,
(SELECT AVG(salary)
FROM employee_salary) AS average
FROM employee_salary;


SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT *
FROM(SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS Agg_table;










# now if we try to have more than 1 column in the subquery we get an error saying the operand should contain 1 column only 

#We can also use subqueries in the select and the from statements - let's see how we can do this

-- Let's say we want to look at the salaries and compare them to the average salary

SELECT first_name, salary, AVG(salary)
FROM employee_salary;
-- if we run this it's not going to work, we are using columns with an aggregate function so we need to use group by
-- if we do that though we don't exactly get what we want
SELECT first_name, salary, AVG(salary)
FROM employee_salary
GROUP BY first_name, salary;

-- it's giving us the average PER GROUP which we don't want
-- here's a good use for a subquery

SELECT first_name, 
salary, 
(SELECT AVG(salary) 
	FROM employee_salary)
FROM employee_salary;


-- We can also use it in the FROM Statement
-- when we use it here it's almost like we are creating a small table we are querying off of
SELECT *
FROM (SELECT gender, MIN(age), MAX(age), COUNT(age),AVG(age)
FROM employee_demographics
GROUP BY gender) 
;
-- now this doesn't work because we get an error saying we have to name it

SELECT gender, AVG(Min_age)
FROM (SELECT gender,
 MIN(age) Min_age, 
 MAX(age) Max_age, 
 COUNT(age) Count_age ,
 AVG(age) Avg_age
FROM employee_demographics
GROUP BY gender) AS Agg_Table
GROUP BY gender
;



SELECT AVG(max_age)
FROM(SELECT gender,
 MIN(age) Min_age, 
 MAX(age) Max_age, 
 COUNT(age) Count_age ,
 AVG(age) Avg_age
FROM employee_demographics
GROUP BY gender) AS Agg_table
;

SELECT MAX(salary) as Second_Highest_Salary
FROM employee_salary WHERE salary <
(SELECT MAX(salary) FROM employee_salary);

SELECT * FROM
employee_salary;

WITH CTE_ONE AS(
SELECT MAX(salary) FROM employee_salary
)
SELECT max(salary) FROM CTE_ONE;
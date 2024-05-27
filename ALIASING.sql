SELECT * 
FROM employee_demographics
ORDER BY age desc
LIMIT 3,2 
;



-- ALIASING IN SQL--
SELECT gender AS gen, AVG(age) AS avg_age 
FROM employee_demographics
GROUP BY gen
HAVING avg_age > 40 OR gen='Female';
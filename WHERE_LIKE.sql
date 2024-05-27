SELECT *
FROM parks_and_recreation.employee_salary 
WHERE first_name='Leslie';



SELECT first_name,
salary
FROM 
parks_and_recreation.employee_salary 
WHERE salary < 50000;


SELECT * 
FROM employee_demographics 
WHERE gender != 'Female';




SELECT * 
FROM employee_demographics 
WHERE birth_date < '1985-04-02';



-- AND OR NOT --- LOGICAL OPERATORS----IN SQL--

SELECT * 
FROM employee_demographics 
WHERE birth_date < '1985-04-02' AND gender='Male';



SELECT * 
FROM employee_demographics 
WHERE birth_date < '1985-04-02' OR NOT gender='Male';



SELECT * 
FROM employee_demographics 
WHERE (first_name='Leslie' AND age=44)
OR age > 50;

#LIKE STATEMENTS
#  % and _ where % means 'anything' and _ means 'any specific value'
SELECT * 
FROM employee_demographics
WHERE first_name LIKE'a%'; 


SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'a__%';


SELECT * 
FROM employee_demographics 
WHERE birth_date LIKE '__8_%';

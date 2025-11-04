SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT * 
FROM parks_and_recreation.employee_salary;

SELECT *
FROM parks_and_recreation.parks_departments;

SELECT first_name, last_name, birth_date, age, (age + 10)*10+10
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = "Leslie";

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = "Female";

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender <> "Female";

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male';

SELECT *
FROM employee_demographics
WHERE gender <> 'Male'
OR birth_date > '1985-01-01';

SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age = 55;

-- LIKE STATEMENT 
-- % and _ 
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__';

SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1985%';

-- GROUPBY CLAUSE 
SELECT gender, AVG(age), MIN(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT *
FROM employee_demographics
ORDER BY age DESC;

SELECT *
FROM employee_demographics
ORDER BY gender , age;


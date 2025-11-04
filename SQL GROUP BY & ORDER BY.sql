-- GROUPBY CLAUSE 
SELECT gender, AVG(age), MIN(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender , AVG(age) 
FROM employee_demographics 
GROUP BY gender 
HAVING AVG(age)<30;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation 
HAVING AVG(salary) > 70000;

-- ORDER BY CLAUSE  
SELECT *
FROM employee_demographics
ORDER BY age DESC;

SELECT * 
FROM employee_demographics 
ORDER BY birth_date ASC;

SELECT *
FROM employee_demographics
ORDER BY gender , age;





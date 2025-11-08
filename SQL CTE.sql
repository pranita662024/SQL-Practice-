-- CTE Common Table Expression

WITH CTE_Example AS (
SELECT gender, AVG(Salary), MIN(SALARY), MAX(SALARY), COUNT(Salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT * 
FROM CTE_Example
;


WITH CTE_EXAMPLE1 AS (
SELECT employee_id, gender, birth_date
FROM employee_demographics
WHERE birth_date > 1985-01-01
),
CTE_EXAMPLE2 AS (
SELECT employee_id , salary 
FROM employee_salary
WHERE salary > 50000
)
SELECT * 
FROM CTE_EXAMPLE1 
JOIN CTE_EXAMPLE2
	ON CTE_EXAMPLE1.employee_id = CTE_EXAMPLE2.employee_id
;
    
    
WITH CTE_Example  (Gender, Avg_Salary, Min_Salary, Max_Salary, Count_of_Salary) AS(
SELECT gender, AVG(Salary), MIN(SALARY), MAX(SALARY), COUNT(Salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT * 
FROM CTE_Example
;


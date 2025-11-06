SELECT first_name , last_name , age,
CASE 
	WHEN age <= 40 THEN 'Young' 
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age > 50 THEN 'Near Death Bed'
END AS Age_Bracket
FROM employee_demographics;

-- salary < 50000 5% increment 
-- salary > 50000 7% increment 
-- finance bonus 10%

SELECT first_name, last_name, salary,
CASE 
	WHEN salary < 50000 THEN salary + (salary * 0.05)
	WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS New_Salary,
CASE 
	 WHEN dept_id = 6 THEN salary + (salary * 0.10)
END AS Bonus
FROM employee_salary ;

SELECT * 
FROM employee_salary;

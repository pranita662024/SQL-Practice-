-- STORED PROCEDURE 

USE parks_and_recreation;
 
-- STORED PROCEDURE 1 
CREATE PROCEDURE large_salaries()
SELECT * 
FROM employee_salary 
WHERE salary > 50000;

CALL large_salaries();

-- STORED PROCEDURE 2
DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
    FROM employee_salary 
    WHERE salary > 50000 ;
    SELECT * 
    FROM employee_salary 
    WHERE salary > 70000 ;
END $$

CALL large_salaries3()

-- STORED PROCEDURE 3 
DELIMITER $$
CREATE PROCEDURE large_salaries6(emp_id_param INT)
BEGIN
SELECT salary 
FROM employee_salary
WHERE employee_id = emp_id_param;
END $$
 
CALL large_salaries6(1);


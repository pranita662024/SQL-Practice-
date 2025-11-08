-- TRIGGERS 

-- CREATE TRIGGER trigger_name
-- { BEFORE | AFTER | INSTEAD OF }
-- { INSERT | UPDATE | DELETE }
-- ON table_name
-- FOR EACH ROW
-- BEGIN
    -- Trigger logic here
-- END;

DELIMITER $$
CREATE TRIGGER insert_func 
	AFTER INSERT 
    ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name) 
    values(NEW.employee_id, NEW.first_name, NEW.last_name);
END $$

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values ( 13, 'Smit', 'Darji', 'Data Analyst', 60000, NULL);

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics;

-- EVENTS 

DELIMITER $$
CREATE EVENT deelete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN 
	DELETE
    FROM employee_demographics 
    WHERE age > 60;
END $$

DELIMITER ;

SHOW VARIABLES LIKE 'event%';

SELECT *
FROM employee_demographics;


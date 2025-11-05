-- STRING FUNCTIONS 
 
use parks_and_recreation;

SELECT *
FROM employee_demographics;

 -- Length
SELECT first_name, LENGTH(first_name)
FROM employee_demographics 
ORDER BY 2;

-- UPPER 
SELECT first_name , UPPER(first_name)
FROM employee_demographics;

-- LOWER  
SELECT last_name, LOWER(last_name)
FROM employee_demographics;

-- TRIM
SELECT TRIM('       SKY         ');

SELECT LTRIM('      CODING       ');

SELECT RTRIM('      CODING       ');

-- LEFT , RIGHT, SUBSTRING  
SELECT first_name, 
LEFT(first_name,4),
RIGHT(first_name,4),
SUBSTRING(first_name,3,2),
SUBSTRING(birth_date,6,2) AS birth_month 
FROM employee_demographics;

-- REPLACE 
SELECT first_name , REPLACE(first_name,'a','p')
FROM employee_demographics ;

-- LOCATE 
SELECT LOCATE ('x','Alexander');

SELECT first_name , LOCATE('An',first_name)
FROM employee_demographics ;

-- CONCAT 
SELECT first_name , last_name ,
CONCAT(first_name, ' ' , last_name) AS full_name
FROM employee_demographics 






CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
 last_name varchar(50),
 fav_movie varchar(50))
;

SELECT * 
FROM temp_table;

INSERT INTO temp_table (first_name,last_name,fav_movie) 
VALUES('Pranita' , 'Shirsekar', 'Avengers'),('Smit' , 'Darji', 'Iron Man');

CREATE TEMPORARY TABLE salary_above_50000
SELECT * 
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM salary_above_50000

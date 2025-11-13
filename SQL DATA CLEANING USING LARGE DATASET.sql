-- Data Cleaning 

-- SET DEFAULT DATABASE 
USE world_layoffs ;

SELECT * 
FROM layoffs;

-- CREATING ANOTHER COPY OF LAYOFFS TABLE TO PERFORM OPERATIONS  
CREATE TABLE layoffs_staging
LIKE layoffs;

-- COPYING ALL THE RECORDS OF LAYOFFS TABLE IN LAYOFFS_STAGING TABLE 
INSERT layoffs_staging 
SELECT *
FROM layoffs;

SELECT *
FROM layoffs_staging;

-- FINDING DUPLICATES 
WITH duplicate_cte AS (
SELECT *, 
ROW_NUMBER() OVER ( PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) AS row_num 
FROM layoffs_staging
)

SELECT * 
FROM duplicate_cte 
WHERE row_num > 1;




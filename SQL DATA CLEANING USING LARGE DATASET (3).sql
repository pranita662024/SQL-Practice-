-- Standardizing Data 

USE world_layoffs;

SELECT *
FROM layoffs_staging2;

SELECT company , TRIM(company)
FROM layoffs_staging2;
 
SET SQL_SAFE_UPDATES = 0;

UPDATE layoffs_staging2
SET company = TRIM(company);

SELECT industry 
FROM layoffs_staging2 
WHERE industry LIKE 'crypto%';

UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry LIKE 'crypto%';

SELECT DISTINCT country, TRIM(TRAILING '.' FROM country)
FROM layoffs_staging2
ORDER BY 1;

UPDATE layoffs_staging2
SET country = TRIM(TRAILING '.' FROM country)
WHERE country = 'United States%';

SELECT `date`,
STR_TO_DATE(`date`,'%m/%d/%Y')
FROM layoffs_staging2;

UPDATE layoffs_staging2
SET `date` = STR_TO_DATE(`date`,'%m/%d/%Y');

ALTER TABLE layoffs_staging2
MODIFY `date` DATE;

SELECT *
FROM  layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;


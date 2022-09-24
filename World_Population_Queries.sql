-- Years in the dataset
SELECT DISTINCT year from population_years;

-- Largest population size for Gabon
SELECT MAX(population)
FROM population_years
WHERE country = 'Gabon';


-- 10 lowest population countries in 2005
SELECT DISTINCT country 
FROM population_years
WHERE year = 2005
ORDER BY population asc
LIMIT 10;

-- Countries with > 100 million population in 2010
SELECT DISTINCT country
FROM population_years
WHERE year = 2010 AND population > 100;

-- Countries with "Island" in their name
SELECT DISTINCT country
FROM population_years
WHERE country LIKE "%islands%";

-- Difference between population in Indonesia in 2000 and 2010
SELECT MAX(population) - MIN(population) AS dind_ifference
FROM population_years
WHERE country = 'Indonesia' AND (year = 2000 OR year = 2010);



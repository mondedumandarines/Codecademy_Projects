-- Entries in countries table from Africa
SELECT COUNT(id) as Africa_Count
FROM countries
WHERE continent = "Africa";

-- Population of Oceania in 2005
SELECT continent, SUM(population) AS '2005_population'
FROM population_years
INNER JOIN countries ON countries.id = country_id
WHERE year = 2005 AND continent = 'Oceania';

-- Average population of countries in South America in 2003
SELECT continent, AVG(population) AS '2003_avg_pop'
FROM population_years
INNER JOIN countries ON countries.id = country_id
WHERE year = 2003 AND continent = 'South America';

-- Country with smallest population in 2007
SELECT name, MIN(population) AS 'smallest_pop'
FROM population_years
INNER JOIN countries on countries.id = country_id
WHERE year = 2007;

-- AVG population of poland in dataset
SELECT name, AVG(population) AS pop_avg
FROM population_years
INNER JOIN countries ON countries.id = country_id
WHERE name = 'Poland';

-- Countries with "The" in name
SELECT COUNT(DISTINCT name)
FROM countries
WHERE name LIKE '%The%';

-- Total population of each continent in 2010
SELECT continent, SUM(population)
FROM countries
INNER JOIN population_years ON country_id = countries.id
WHERE year = 2010
GROUP BY 1;


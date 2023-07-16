--Creating Database
CREATE DATABASE Covid19Database;

--Visualizing First 5 rows from both tables
SELECT TOP 5 *
FROM Covid19Deaths
ORDER BY location, date;

SELECT TOP 5 *
FROM Covid19Vaccination
ORDER BY location, date;

--Selecting Specific Columns from Covid19Deaths Table
SELECT location, date, total_cases, total_deaths, population
FROM Covid19Database..Covid19Deaths
ORDER BY location, date;

--Find Death Percentage
SELECT location, date, total_cases, total_deaths, population, (total_deaths/total_cases)*100 as DeathPercentage
FROM Covid19Database..Covid19Deaths
WHERE total_cases IS NOT NULL AND total_deaths IS NOT NULL
ORDER BY location, date;

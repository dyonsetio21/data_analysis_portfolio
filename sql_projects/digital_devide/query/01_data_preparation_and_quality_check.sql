-- CHECK FOR NULL VALUES
SELECT *
FROM `digital-divide-496812.digital_divide_analysis.population`
WHERE population is null

SELECT *
FROM `digital-divide-496812.digital_divide_analysis.education`
WHERE education_rate is null

SELECT *
FROM `digital-divide-496812.digital_divide_analysis.gdp`
WHERE gdp_per_capita is null

SELECT *
FROM `digital-divide-496812.digital_divide_analysis.internet_usage`
WHERE internet is null

-- CHECK FOR DUPLICATES
SELECT
  country_code,
  year,
  COUNT(*)
FROM `digital-divide-496812.digital_divide_analysis.gdp`
GROUP BY country_code, year
HAVING COUNT(*) > 1




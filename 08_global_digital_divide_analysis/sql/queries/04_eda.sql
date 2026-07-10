-- EDA
-- 1. Global Internet Trend
SELECT 
    year,
    ROUND(AVG(internet), 2) AS avg_internet_usage
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
GROUP BY year
ORDER BY year

-- 2. Country Compaison
-- a. top countrires
SELECT
    country,
    ROUND(AVG(internet), 2) AS avg_internet
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
GROUP BY country
ORDER BY avg_internet DESC
LIMIT 10

-- b. bottom countrires
SELECT
    country,
    ROUND(AVG(internet), 2) AS avg_internet
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
GROUP BY country
ORDER BY avg_internet ASC
LIMIT 10

-- 3. GDP vs Internet Usage
SELECT
    country,
    year,
    internet,
    gdp_per_capita
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
WHERE
    gdp_per_capita IS NOT NULL
    AND internet IS NOT NULL
ORDER BY 
    country ASC, 
    year ASC

-- 4. Population Context
SELECT
    country,
    population,
    internet
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
WHERE year = 2024
ORDER BY population DESC
LIMIT 20

-- 5. Education vs Internet
SELECT
    country,
    year,
    education_rate,
    internet
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
WHERE education_rate IS NOT NULL
ORDER BY 
    country ASC, 
    year ASC

-- 6. Outlier Analysis
SELECT
    country,
    year,
    gdp_per_capita,
    internet
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
WHERE year = 2024
ORDER BY gdp_per_capita DESC
LIMIT 20

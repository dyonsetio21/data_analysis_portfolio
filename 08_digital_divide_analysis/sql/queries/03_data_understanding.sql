-- DATA UNDERSTANDING
--- Check the dataset structure
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT country_code) AS total_countries
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`

-- Check the year range
SELECT
    MIN(year) AS min_year,
    MAX(year) AS max_year
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`

-- See the sample data
SELECT *
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
LIMIT 20

-- Basic statistics
SELECT
    MIN(internet) AS min_internet,
    MAX(internet) AS max_internet,
    AVG(internet) AS avg_internet,

    MIN(gdp_per_capita) AS min_gdp,
    MAX(gdp_per_capita) AS max_gdp,
    AVG(gdp_per_capita) AS avg_gdp
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`

-- Find out which countries have the highest and lowest internet speeds.
--- Highest
SELECT
    country,
    year,
    internet    
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
ORDER BY internet DESC
LIMIT 10

--- Lowest
SELECT
    country,
    year,
    internet    
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
ORDER BY internet ASC
LIMIT 10

-- Search for global trends by year
SELECT
    year,
    AVG(internet) AS avg_internet_usage
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
GROUP BY year
ORDER BY year

-- Check the distribution of missing values after the join
SELECT
    COUNTIF(gdp_per_capita IS NULL) AS missing_gdp,
    COUNTIF(education_rate IS NULL) AS missing_education,
    COUNTIF(population IS NULL) AS missing_population
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`

-- Search for a GDP outlier
SELECT
    country,
    year,
    gdp_per_capita
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
ORDER BY gdp_per_capita DESC
LIMIT 20    

-- Data quality final check.
--- internet > 100
SELECT *
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
WHERE internet > 100

--- negative GDP
SELECT *
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
WHERE gdp_per_capita < 0

--- population negatif
SELECT *
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
WHERE population < 0

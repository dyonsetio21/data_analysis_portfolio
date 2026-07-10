-- DATA JOIN FINAL
CREATE OR REPLACE TABLE `digital-divide-496812.digital_divide_analysis.final_dataset` AS
SELECT
    i.country,
    i.country_code,
    i.year,
    i.internet,
    g.gdp_per_capita,
    e.education_rate,
    p.population
FROM `digital-divide-496812.digital_divide_analysis.internet_usage` i

LEFT JOIN `digital-divide-496812.digital_divide_analysis.gdp` g
    ON i.country_code = g.country_code
    AND i.year = g.year

LEFT JOIN `digital-divide-496812.digital_divide_analysis.education` e
    ON i.country_code = e.country_code
    AND i.year = e.year

LEFT JOIN `digital-divide-496812.digital_divide_analysis.population` p 
    ON i.country_code = p.country_code
    AND i.year = p.year


-- PREVIEW OF JOIN RESULTS
SELECT *
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
LIMIT 10

-- CHECK THE NUMBER OF ROWS
SELECT COUNT(*)
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`

-- CHECK FOR MISSING ITEMS
SELECT *
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`
WHERE
    gdp_per_capita IS NULL
    OR education_rate IS NULL  

-- CHECK UNIQUE COUNTRY CODE
SELECT COUNT(DISTINCT country_code)
FROM `digital-divide-496812.digital_divide_analysis.final_dataset`

---------------------------------------------------------------








-- PHASE 4: INFLATION DATA UNDERSTANDING

-- ======================================================
-- Business Question:
-- How complete is the inflation dataset?
--
-- Why?
-- To understand data coverage before analysis.
-- ======================================================

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT region) AS total_region,
    MIN(date) AS start_date,
    MAX(date) As end_date,
    COUNTIF(inflation IS NULL) AS missing_inflation
FROM `portfolio-project-500523.food_price_inflation.inflation_food`;


-- ======================================================
-- Business Question:
-- Apakah seluruh kota memiliki jumlah observasi yang sama?
-- ================================================

SELECT
    region,
    COUNT(*) AS observations,
    MIN(date) AS first_observation,
    MAX(date) AS last_observation,
FROM `portfolio-project-500523.food_price_inflation.inflation_food`
GROUP BY region
ORDER BY observations Desc;

-- ======================================================
-- Business Question:
-- Apakah ada missing value?
-- ================================================

SELECT *
FROM `portfolio-project-500523.food_price_inflation.inflation_food`
WHERE inflation IS NULL;

-- ======================================================
-- Business Question:
-- Bagaimana distribusi nilai inflasi pangan?
-- ================================================

SELECT
    MIN(inflation) AS min_inflation,
    MAX(inflation) AS max_inflation,
    ROUND(AVG(inflation),2) AS avg_inflation,
    ROUND(STDDEV(inflation),2) AS std_inflation
FROM `portfolio-project-500523.food_price_inflation.inflation_food`;

-- ======================================================
-- Business Question:
-- Which regions recorded the highest average food inflation during the observation period?
-- ================================================

SELECT
    region,
    ROUND(AVG(inflation),2) AS avg_inflation,
    MIN(inflation) AS min_inflation,
    MAX(inflation) AS max_inflation
FROM `portfolio-project-500523.food_price_inflation.inflation_food`
GROUP BY region
ORDER BY avg_inflation DESC;

-- ======================================================
-- Business Question:
-- Which regions experienced the most volatile food inflation?
-- ================================================

SELECT
    region,
    ROUND(AVG(inflation),2) AS avg_inflation,
    ROUND(STDDEV(inflation),2) AS inflation_volatility
FROM `portfolio-project-500523.food_price_inflation.inflation_food`
GROUP BY region
ORDER BY inflation_volatility DESC;

-- ======================================================
-- Business Question:
-- How did the national average food inflation change over time?
-- ================================================

SELECT
    date,
    ROUND(AVG(inflation),2) AS national_avg_inflation
FROM `portfolio-project-500523.food_price_inflation.inflation_food`
GROUP BY date
ORDER BY date;

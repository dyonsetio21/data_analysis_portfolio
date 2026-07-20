-- Phase 1 -- Data Understanding

-- ======================================================
-- Business Question 1:
-- What is the overall coverage of the food price dataset?
--
-- Why?
-- To understand the observation period, dataset size,
-- and number of commodities available for analysis.
-- ======================================================

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT commodity) AS total_commodities,
    MIN(date) AS start_date,
    MAX(date) AS end_date
FROM `portfolio-project-500523.food_price_inflation.food_price`;

-- ======================================================
-- Business Question 2:
-- Are there any missing price values?
--
-- Why?
-- Missing values can affect statistical analysis,
-- trend calculations, and visualization.
-- ======================================================

SELECT
    COUNTIF(price IS NULL) AS missing_price
FROM `portfolio-project-500523.food_price_inflation.food_price`;

-- ======================================================
-- Business Question 3:
-- Does the dataset contain duplicate records?
--
-- Why?
-- Duplicate observations may distort aggregation results.
-- ======================================================

SELECT
    date,
    commodity,
    COUNT(*) AS total_records
FROM `portfolio-project-500523.food_price_inflation.food_price`
GROUP BY
    date,
    commodity
HAVING COUNT(*)>1;

-- ======================================================
-- Business Question 4:
-- What commodities are included?
-- ======================================================

SELECT DISTINCT
    commodity
FROM `portfolio-project-500523.food_price_inflation.food_price`
ORDER BY commodity;

-- ======================================================
-- Business Question 5:
-- How many observations does each commodity have?
-- ======================================================

SELECT
    commodity,
    COUNT(*) AS observations
FROM `portfolio-project-500523.food_price_inflation.food_price`
GROUP BY commodity
ORDER BY observations DESC;

-- ======================================================
-- Business Question 6:
-- Kapan masing-masing komoditas mulai muncul di dataset?
-- ======================================================

SELECT
    commodity,
    MIN(date) AS first_observation,
    MAX(date) AS last_observation,
    COUNT(*) AS observations
FROM `portfolio-project-500523.food_price_inflation.food_price`
GROUP BY commodity
ORDER BY first_observation;

-- ======================================================
-- Business Question 7:
-- Komoditas apa saja yang hilang di dataset?
-- ======================================================

SELECT
    commodity,
    COUNTIF(price IS NULL) AS missing_count
FROM `portfolio-project-500523.food_price_inflation.food_price`
GROUP BY commodity
HAVING missing_count > 0
ORDER BY missing_count DESC;



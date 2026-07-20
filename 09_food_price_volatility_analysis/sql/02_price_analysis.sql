-- Phase 2: EXPLORATORY DATA ANALYSIS (EDA)

-- 2.1 Price Level Analysis
-- ======================================================
-- Business Question 1:
-- Which commodities have the highest average prices?
-- What is the price range of each commodity?
-- Which commodities have the widest price range?
-- ======================================================

SELECT
    commodity,
    MIN(price) AS min_price,
    MAX(price) AS max_price,
    MAX(price)-min(price) AS price_range,
    ROUND(AVG(price),0) AS avg_price
FROM `portfolio-project-500523.food_price_inflation.food_price`
WHERE price IS NOT NULL
GROUP BY commodity
ORDER BY price_range DESC;

-- PHASE 3: TIME SERIES 

-- 3.1 Price Volatility Analysis

-- ======================================================
-- Business Question:
-- Which commodities experienced the highest price volatility?
--
-- Why?
-- To identify commodities with the largest price
-- fluctuations throughout the observation period.
-- ======================================================

SELECT
    commodity,
    ROUND(AVG(price),0) AS avg_price,
    ROUND(STDDEV(price),0) AS price_volatility,
    ROUND(STDDEV(price)/AVG(price)*100,2) AS volatility_pct
FROM `portfolio-project-500523.food_price_inflation.food_price`
WHERE price IS NOT NULL
GROUP BY commodity
ORDER BY volatility_pct DESC;

-- ======================================================
-- Business Question:
-- How did each commodity's price change compared to the previous month?
--
-- Why?
-- To calculate month-over-month price changes for each
-- commodity and identify periods of significant price movement.
-- ======================================================

CREATE TABLE `portfolio-project-500523.food_price_inflation.food_price_monthly` AS (

WITH monthly_price_change AS (
    SELECT
        commodity,
        date,
        price,
        LAG(price) OVER (
            PARTITION BY commodity
            ORDER BY date
        ) AS previous_price
    FROM `portfolio-project-500523.food_price_inflation.food_price`
    WHERE price IS NOT NULL
)
SELECT
    commodity,
    date,
    price,
    previous_price,
    price - previous_price AS price_change,
    ROUND((price-previous_price)/previous_price*100,2) AS price_change_pct
FROM monthly_price_change
ORDER BY commodity, date
);
-------------
SELECT *
FROM `portfolio-project-500523.food_price_inflation.food_price_monthly`

-------------
-- ======================================================
-- Business Question:
-- Which commodities experienced the largest monthly
-- price increases and decreases?
--
-- Why?
-- To identify extreme price movements (price shocks)
-- during the observation period.
-- ======================================================

WITH ranked_price_change AS (
    SELECT
        commodity,
        date,
        price,
        previous_price,
        price_change,
        price_change_pct,
        ROW_NUMBER() OVER (
            ORDER BY price_change_pct DESC
        ) AS increase_rank,
        ROW_NUMBER() OVER (
            ORDER BY price_change_pct ASC
        ) AS decrease_rank
    FROM `portfolio-project-500523.food_price_inflation.food_price_monthly`
    WHERE price_change_pct IS NOT NULL
)
SELECT *
FROM ranked_price_change
WHERE increase_rank <=5
    OR decrease_rank <=5
ORDER BY increase_rank;
-----------------------------------
-------- QUERY DIATAS DIPISAH MENJADI SEPERTI DIBAWAH
-----------------------------------

-- Top 5 Largest Monthly Price Increase

SELECT
    commodity,
    date,
    price,
    previous_price,
    price_change,
    price_change_pct
FROM `portfolio-project-500523.food_price_inflation.food_price_monthly`
WHERE price_change_pct IS NOT NULL
ORDER BY price_change_pct DESC
LIMIT 5;

-- Top 5 Largest Monthly Price Decrease 

SELECT
    commodity,
    date,
    price,
    previous_price,
    price_change,
    price_change_pct
FROM `portfolio-project-500523.food_price_inflation.food_price_monthly`
WHERE price_change_pct IS NOT NULL
ORDER BY price_change_pct ASC
LIMIT 5;

-- ======================================================
-- Business Question:
-- Which commodities experienced price increases and
-- decreases most frequently?
--
-- Why?
-- To understand the price movement pattern of each
-- commodity throughout the observation period.
-- ======================================================

SELECT
    commodity,
    COUNT(*) AS total_observations,
    COUNTIF(price_change > 0) AS months_increased,
    COUNTIF(price_change < 0) AS months_decreased,
    COUNTIF(price_change = 0) AS months_unchanged,
    ROUND(COUNTIF(price_change > 0) / COUNT(*) * 100, 2) AS increased_pct
FROM `portfolio-project-500523.food_price_inflation.food_price_monthly`
WHERE previous_price IS NOT NULL
GROUP BY commodity              -- GROUP BY dulu
HAVING COUNT(*) >= 24           -- Baru kemudian FILTER hasil group dengan HAVING
ORDER BY increased_pct DESC;

-- ======================================================
-- Business Question:
-- When did each commodity experience its largest
-- monthly price increase?
--
-- Why?
-- To identify the most significant monthly price surge
-- for every commodity.
-- ======================================================

WITH rangked_price_change AS (
    SELECT
        commodity,
        date,
        price,
        previous_price,
        price_change,
        price_change_pct,
        ROW_NUMBER() OVER (
            PARTITION BY commodity
            ORDER BY price_change_pct DESC) AS rn
    FROM `portfolio-project-500523.food_price_inflation.food_price_monthly`
    WHERE price_change_pct IS NOT NULL
)
SELECT
    commodity,
    date,
    price,
    previous_price,
    price_change,
    price_change_pct
FROM rangked_price_change
WHERE rn = 1
ORDER BY price_change_pct DESC;



WITH rangked_price_change AS (
    SELECT
        commodity,
        date,
        price,
        previous_price,
        price_change,
        price_change_pct,
        ROW_NUMBER() OVER (
            PARTITION BY commodity
            ORDER BY price_change_pct ASC) AS rn
    FROM `portfolio-project-500523.food_price_inflation.food_price_monthly`
    WHERE price_change_pct IS NOT NULL
)
SELECT
    commodity,
    date,
    price,
    previous_price,
    price_change,
    price_change_pct
FROM rangked_price_change
WHERE rn = 1
ORDER BY price_change_pct DESC;



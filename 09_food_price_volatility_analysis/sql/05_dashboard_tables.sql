SQL PHASE 6

-- ======================================================
-- Membuat tabel agregasi monthly_national_inflation
-- ================================================

CREATE TABLE `portfolio-project-500523.food_price_inflation.monthly_national_inflation` AS (
    SELECT
        date,
        ROUND(AVG(inflation),2) AS national_avg_inflation
    FROM `portfolio-project-500523.food_price_inflation.inflation_food`
    GROUP BY date
    ORDER BY date
);

-- ======================================================
-- Business Question:
-- How did commodity prices and national food inflation move over time?
-- ================================================

SELECT
    fp.commodity,
    fp.date,
    fp.price,
    fp.price_change_pct,
    ni.national_avg_inflation
FROM `portfolio-project-500523.food_price_inflation.food_price_monthly` fp
LEFT JOIN `portfolio-project-500523.food_price_inflation.monthly_national_inflation` ni
ON fp.date = ni.date
ORDER BY commodity, date;


-- ======================================================
-- Membuat tabel agregasi commodity_volatility_summary
-- ================================================

CREATE TABLE `food_price_inflation.commodity_volatility_summary` AS

SELECT
    commodity,
    COUNT(price) AS total_observations,

    ROUND(AVG(price), 0) AS avg_price,
    MIN(price) AS min_price,
    MAX(price) AS max_price,

    ROUND(STDDEV(price), 0) AS price_volatility,

    ROUND(
        STDDEV(price) / AVG(price) * 100,
        2
    ) AS volatility_pct

FROM `food_price_inflation.food_price`

WHERE price IS NOT NULL

GROUP BY commodity

ORDER BY volatility_pct DESC;


-- ========== DIBUAT TABEL ============
CREATE TABLE `portfolio-project-500523.food_price_inflation.food_price_vs_inflation` AS (
    SELECT
    fp.commodity,
    fp.date,
    fp.price,
    fp.price_change_pct,
    ni.national_avg_inflation
FROM `portfolio-project-500523.food_price_inflation.food_price_monthly` fp
LEFT JOIN `portfolio-project-500523.food_price_inflation.monthly_national_inflation` ni
ON fp.date = ni.date
ORDER BY commodity, date
);

-- ======================================================
-- Business Question:
-- During months with high national food inflation, which commodities experienced the largest price increases?
-- ======================================================

SELECT
    commodity,
    ROUND(AVG(price_change_pct),2) AS avg_price_change,
    MAX(price_change_pct) AS max_price_change
FROM `portfolio-project-500523.food_price_inflation.food_price_vs_inflation`
WHERE national_avg_inflation >= 5
GROUP BY commodity
ORDER BY avg_price_change DESC;

-- ======================================================
-- Melihat pola dari suatu komoditas
-- ======================================================

SELECT
    date,
    price,
    price_change_pct,
    national_avg_Inflation
FROM `portfolio-project-500523.food_price_inflation.food_price_vs_inflation`
WHERE commodity = 'Cabai Rawit Merah'
    AND date >= '2024-01-01'
ORDER BY date;

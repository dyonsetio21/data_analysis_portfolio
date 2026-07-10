# Marketplace Sales Analysis

## Project Overview
This project is an end-to-end data analytics project completed as the final project of the MySkill Data Analysis Bootcamp.

Using SQL, Python, and Looker Studio, this project analyzes marketplace transaction data to uncover sales trends, product performance, customer purchasing behavior, and payment preferences. The goal is to transform raw transactional data into actionable business insights that support data-driven decision-making.

---

## Business Problem

Marketplace businesses need to understand sales performance, customer behavior, and product trends in order to optimize marketing strategies and improve business growth.

This project answers several business questions, including:

- How do sales perform throughout the year?
- Which product categories and brands generate the highest revenue?
- Which payment methods are most preferred by customers?
- Which products should be promoted or restocked?
- Are marketing campaigns effective?
- Which customers abandoned their checkout process?

---

## Project Objectives

- Analyze sales trends using SQL
- Perform exploratory data analysis (EDA) using Python
- Identify product and payment trends
- Evaluate campaign performance
- Build an interactive dashboard for business users

---

## Dataset

Dataset provided by **MySkill Data Analysis Bootcamp**.

The analysis uses four related tables:

- `order_detail`
- `customer_detail`
- `sku_detail`
- `payment_detail`

---

## Tools

- SQL (Google BigQuery)
- Python (Pandas, NumPy, Matplotlib)
- Google Looker Studio
- Microsoft Excel

---

## Project Workflow

```
Data Collection
        ↓
Data Cleaning
        ↓
SQL Analysis
        ↓
Python EDA
        ↓
Dashboard Visualization
        ↓
Business Insights
```

---

# Key Findings

## 1. Monthly Sales Trends

![result1](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/sql/results/Monthly_Sales_Trends_(2021).png)

### Insights

- August recorded the highest sales in 2021.
- December and October followed as the strongest-performing months.
- Monthly sales fluctuated significantly, with the highest month generating almost five times more revenue than the lowest month.

---

## 2. Top Product Categories

![result2](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/sql/results/Top_Selling_Product_Categories_(2022).png)

### Insights

- Mobile & Tablets generated the highest revenue.
- Electronics consistently outperformed other categories.

---

## 3. Sales Comparison (2021 vs 2022)

![result3](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/sql/results/Sales_Comparison_(2021_vs_2022).png)

### Insights

- Overall sales increased in 2022.
- Electronics and Fashion drove the largest growth.
- Books and Others experienced declining sales.

---

## 4. Payment Method Analysis

![result4](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/sql/results/Top_Payment_Methods_(2022).png)

### Insights

- Cash on Delivery (COD) remained the dominant payment method.
- Digital payment adoption continued to grow through Payaxis and Easypay.

---

## 5. Top Selling Brands

![result5](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/sql/results/Top_Selling_Brands_(2022).png)

### Insights

- Samsung ranked first.
- Apple followed closely.
- Sony, Huawei, and Lenovo completed the top five.

---

## 6. Best-Selling Products

![result6](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/python/results/best_selling_product.png)

### Insights

- IDROID_BALRX7-Gold achieved the highest sales volume.
- The product was selected as the grand prize for the marketing campaign.

---

## 7. Sales Decline Analysis

![results7a](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/python/results/sales_decline_analysis.png)

![results7b](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/python/results/sales_decline_analysis_2.png)

### Insights

The **Others** category experienced the largest decline in sales.

Products with the biggest decrease included:

- RB_Dettol Germ Busting Kit-bf
- Dawiance_MD 10 + DWB 600

### Recommendation

- Bundle slow-moving products with popular items.
- Apply targeted discounts.
- Review pricing strategy.

---

## 8. Unpaid Checkout Customers

![result8](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/python/results/unpaid_checkout_customers.png)

### Insights

- 820 customers completed checkout but did not finish payment.

### Recommendation

These customers could become the target of reminder emails or promotional campaigns.

---

## 9. Campaign Effectiveness

![result9a](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/python/results/campaign_effectiveness.png)

![result9b](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/python/results/campaign_effectiveness_2.png)

### Insights

Weekend sales during Q4 2022 were **42.72% lower** than weekday sales.

### Recommendation

- Reevaluate weekend campaign strategy.
- Conduct A/B testing.
- Improve promotional offers during weekends.

---

# Dashboard Preview

![dashboard1](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/looker_studio/images/sales_campaign_dashboard_001.png)

![dashboard2](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/01_marketplace_sales_analysis/looker_studio/images/sales_campaign_dashboard_002.png)

The interactive dashboard summarizes:

- Sales Performance
- Net Profit
- Average Order Value (AOV)
- Product Performance
- Payment Trends

---

# Business Recommendations

Based on the analysis:

- Focus marketing campaigns during high-performing periods.
- Improve promotions for slow-moving products.
- Increase digital payment adoption through incentives.
- Re-engage unpaid checkout customers.
- Optimize inventory based on sales trends.

---

# Resources

## Medium Article (Bahasa Indonesia)

[Mengolah Data E-commerce Dengan SQL untuk Keputusan Bisnis yang Lebih Cerdas](link)

## Dashboard

[Google Looker Studio](https://lookerstudio.google.com/s/m14EMZrp4gc)


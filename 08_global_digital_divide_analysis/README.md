# Global Digital Divide Analysis

## Project Overview

This project explores the global digital divide by analyzing internet adoption across 221 countries from 2010 to 2024. Using SQL for data preparation and analysis, followed by Power BI for interactive visualization, the project investigates how internet access relates to economic prosperity, education, and population.

The objective is to understand global disparities in internet adoption and identify the socioeconomic factors associated with digital inclusion.

---

## Business Problem

Internet access has become a fundamental driver of education, economic growth, and digital transformation. However, internet adoption varies significantly across countries.

Understanding the factors associated with internet access can help governments, policymakers, and organizations identify regions that require greater investment in digital infrastructure and inclusion initiatives.

This project answers several key questions:

- How has global internet adoption changed over time?
- Which countries have the highest and lowest internet penetration?
- How does GDP per capita relate to internet adoption?
- Does education level influence internet access?
- Are there countries that perform better or worse than expected?

---

## Project Objectives

- Analyze global internet adoption trends
- Compare internet penetration across countries
- Explore the relationship between GDP per capita and internet usage
- Analyze the relationship between education and internet adoption
- Provide population context for internet adoption
- Identify countries that deviate from overall trends
- Build an interactive Power BI dashboard

---

## Dataset

The analysis combines four public datasets:

| Dataset | Source |
|---------|--------|
| Internet Usage | [Our World in Data](https://ourworldindata.org/grapher/share-of-individuals-using-the-internet.csv) |
| GDP per Capita | [World Bank](https://api.worldbank.org/v2/en/indicator/NY.GDP.PCAP.CD?downloadformat=csv) |
| Secondary School Enrollment | [World Bank](https://api.worldbank.org/v2/en/indicator/SE.SEC.ENRR?downloadformat=csv) |
| Population | [World Bank](https://api.worldbank.org/v2/en/indicator/SP.POP.TOTL?downloadformat=csv) |

Coverage:

- 221 countries
- 2010–2024
- Multiple socioeconomic indicators

---

## Tools

- SQL (Google BigQuery)
- Microsoft Power BI
- Microsoft Excel

---

## Project Workflow

```text
Data Collection
        ↓
Data Cleaning
        ↓
Data Integration
        ↓
SQL Analysis
        ↓
Business Insights
        ↓
Power BI Dashboard
```

---

# Key Findings

## 1. Global Internet Adoption Trend

![result1](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/08_global_digital_divide_analysis/sql/results/Global_internet_trend.png)

### Insights

- Global internet adoption increased steadily from 2010 onward.
- Internet penetration accelerated during and after the COVID-19 pandemic.
- The 2024 values may be incomplete because reporting is still ongoing.

---

## 2. Internet Penetration by Country

### Top Countries

![result2a](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/08_global_digital_divide_analysis/sql/results/top_countries.png)

### Insights

Countries with the highest internet adoption were primarily:

- Nordic countries
- Gulf Cooperation Council (GCC) countries
- Other advanced economies

---

### Lowest Countries

![result2b](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/08_global_digital_divide_analysis/sql/results/bottom_countries.png)

### Insights

Countries with the lowest internet penetration were largely concentrated in Africa and regions experiencing political instability.

Common characteristics included:

- Limited digital infrastructure
- Lower income levels
- Ongoing conflict
- Limited access to education

---

## 3. GDP per Capita vs Internet Usage

![result3](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/08_global_digital_divide_analysis/sql/results/gdp_vs_internet_usage.png)

### Insights

- Countries with higher GDP per capita generally showed higher internet adoption.
- Although the relationship was positive, several countries performed better or worse than expected.

---

## 4. Education vs Internet Usage

![result4](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/08_global_digital_divide_analysis/sql/results/education_vs_internet.png)

### Insights

- Higher education levels were generally associated with greater internet adoption.
- The relationship appeared weaker than GDP, suggesting that education is only one of several contributing factors.

---

## 5. Population Context

![result5](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/08_global_digital_divide_analysis/sql/results/population_context.png)

### Insights

- China had the largest population within the dataset and achieved approximately 92% internet adoption.
- Indonesia ranked among the largest populations but recorded lower internet usage than Brazil.

This suggests that population size alone does not determine internet penetration.

---

## 6. Outlier Analysis

![result6](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/08_global_digital_divide_analysis/sql/results/outlier_analysis.png)

### Insights

Several countries achieved near-universal internet access despite having relatively modest GDP per capita.

This suggests that:

- Digital infrastructure
- Government policy
- National investment

may play an important role alongside economic prosperity.

---

# Dashboard Preview

![dashboard](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/08_global_digital_divide_analysis/power_bi/dashboard.png)

---

## Dashboard Highlights

The dashboard enables users to explore:

- Global Internet Adoption Trend
- Country Comparison
- GDP vs Internet Usage
- Education vs Internet Usage
- Population Context
- Outlier Analysis

---

# Business Recommendations

Based on the analysis:

- Prioritize digital infrastructure investment in countries with low internet penetration.
- Expand digital literacy and education programs alongside internet infrastructure.
- Study countries that outperform their economic peers to identify successful digital policies.
- Consider socioeconomic indicators together when designing digital inclusion strategies rather than relying solely on GDP.

---

# Resources

## Data Sources

- [Our World in Data](https://ourworldindata.org)
- [World Bank](https://www.worldbank.org/ext/en/home)

## Dashboard

[Power BI Dashboard](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/08_global_digital_divide_analysis/power_bi/dashboard.pbix)

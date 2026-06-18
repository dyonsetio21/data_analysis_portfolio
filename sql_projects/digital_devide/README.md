# The Digital Divide (Internet Access vs. Socio-Economic Factors)

## Project Overview
This project analyzes the relationship between internet adoption, GDP per capita, education, and population across 221 countries from 2010–2024.

## Objectives
- Analyze global internet adoption trends
- Compare internet penetration across countries
- Explore the relationship between GDP and internet usage
- Identify countries that deviate from common patterns

## Dataset Sources
- [Our World in Data (Internet Usage)](https://ourworldindata.org/grapher/share-of-individuals-using-the-internet.csv)
- [World Bank (GDP per-Capita)](https://api.worldbank.org/v2/en/indicator/NY.GDP.PCAP.CD?downloadformat=csv) 
- [World Bank (Education)](https://api.worldbank.org/v2/en/indicator/SE.SEC.ENRR?downloadformat=csv)
- [World Bank (Population)](https://api.worldbank.org/v2/en/indicator/SP.POP.TOTL?downloadformat=csv)

## Tools
- Google BigQuery
- SQL

## Key Findings
### 1. Global Internet Trend
![result1](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/sql_projects/digital_devide/results/Global_internet_trend.png)

- Global internet adoption showed a consistent upward trend from 2010 onward, with temporary acceleration during and after the pandemic years.
- 2024 data may not yet be fully reported, potentially affecting the unusually large increase observed.

### 2. Cross-Country Comparison
#### a. Top Countries
![result2a](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/sql_projects/digital_devide/results/top_countries.png)

- Primarily Nordic countries
- Gulf Cooperation Council countries
- Advanced economies

#### b. Bottom Countries
![rresult2b](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/sql_projects/digital_devide/results/bottom_countries.png)

- Widespread presence in Africa
- Ongoing conflicts
- Low-income populations
- Issues with infrastructure

**Countries with low internet penetration are often linked to political instability, inadequate infrastructure development, and lower income levels.**

### 3. GDP vs Internet Usage
![result3](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/sql_projects/digital_devide/results/gdp_vs_internet_usage.png)

Higher GDP per capita usually correlates with greater internet adoption, though this relationship isn’t perfectly linear across all countries and years.

### 4. Population
![result4](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/sql_projects/digital_devide/results/population_context.png)

- The country with the largest population is China, with an internet usage rate of 92%.
- Indonesia is the second-largest country, but its internet usage rate is lower than that of Brazil, which ranks third.

**(Note)** 
As the global population is typically: 
1. India
2. China
3. US / Indonesia depending on the dataset subset
  
It is possible that: 
- India is missing
- or there is a specific filter in place

### 5. Education vs Internet
![result5](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/sql_projects/digital_devide/results/education_vs_internet.png)

Countries with higher education levels tend to have greater internet adoption, although this relationship seems weaker and less consistent than that of GDP per capita.

### 6. Outlier Analysis
![result6](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/sql_projects/digital_devide/results/outlier_analysis.png)

Some countries achieve nearly universal internet access even without having the highest GDP per capita, indicating that infrastructure and digital policy can also be significant factors.

## Dashboard
![digital_devide_dashboard](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/powerbi_dashboard/digital_devide_dashboard/digital_devide_dashboard.png)

View full report: [Click here](https://github.com/dyonsetio21/data_analysis_portfolio/tree/main/powerbi_dashboard/digital_devide_dashboard)

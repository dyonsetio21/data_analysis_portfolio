# Cyclistic Bike-Share Rider Behavior Analysis

## Project Overview

This project is an end-to-end data analytics case study based on the **Google Data Analytics Professional Certificate Capstone**.

Using Python for data cleaning and exploratory analysis, followed by Tableau for interactive visualization, the project investigates behavioral differences between **casual riders** and **annual members**. The objective is to generate actionable insights that support Cyclistic's marketing strategy to convert casual riders into annual members.

---

## Business Problem

Cyclistic aims to increase the number of annual memberships, as members generate more sustainable long-term revenue than casual riders. Understanding how each customer segment uses the bike-sharing service is essential for designing targeted marketing campaigns.

This project answers several business questions, including:

- How do casual riders and annual members differ in their riding behavior?
- When are customers most active?
- How long do customers typically ride?
- Which bike types are most popular?
- What strategies could encourage casual riders to become members?

---

## Project Objectives

- Clean and prepare one year of trip data
- Analyze rider behavior using Python
- Identify usage patterns between customer segments
- Build an interactive Tableau dashboard
- Generate business recommendations to support membership growth

---

## Dataset

The dataset contains **12 months of Cyclistic trip data (July 2020 – June 2021)** provided by **Divvy Trip Data** under the **Motivate International Inc. Data License Agreement**.

After cleaning, the final dataset contains approximately **4.37 million rides**.

---

## Tools

- Python
  - Pandas
  - Matplotlib
- Tableau Public
- Google Colab

---

## Project Workflow

```text
Data Collection
        ↓
Data Cleaning
        ↓
Exploratory Data Analysis (EDA)
        ↓
Data Visualization
        ↓
Business Insights
        ↓
Interactive Dashboard
```

---

## Data Preparation

The following preprocessing steps were performed before the analysis:

- Combined 12 monthly CSV files into a single dataset
- Converted date and time columns into datetime format
- Created new variables:
  - Ride Length
  - Day of Week
  - Month
- Removed rides with invalid durations (≤ 0 minutes or longer than 24 hours)
- Removed incomplete records

Final dataset: **4.37 million rides**

---

# Key Findings

## 1. Ride Duration Comparison

![result1](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/06_cyclistic_bike_share_analysis/python/visualization_results/average_trip_duration_(minutes).png)

### Insights

- Casual riders averaged **33.6 minutes** per ride.
- Annual members averaged **15 minutes** per ride.
- The difference suggests that casual riders primarily use bicycles for leisure, while members tend to use them for commuting.

---

## 2. Weekly Riding Pattern

![result2](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/06_cyclistic_bike_share_analysis/python/visualization_results/number_of_rides_per_day_(casual_vs_member).png)

### Insights

- Casual riders were most active on weekends.
- Members showed consistently higher usage during weekdays.
- This pattern indicates different travel purposes between the two customer groups.

---

## 3. Bike Type Preference

![result3](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/06_cyclistic_bike_share_analysis/python/visualization_results/types_of_bicycles_used.png)

### Insights

- Both customer groups frequently used docked bikes.
- Casual riders showed relatively higher usage of electric bikes than annual members.

---

## 4. Seasonal Ride Trends

![result4](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/06_cyclistic_bike_share_analysis/python/visualization_results/monthly_ride_volume_trends_(casual_vs_member).png)

### Insights

- Ride volume peaked during the summer months (June–August).
- Usage declined significantly during winter.
- Seasonal variation was more pronounced among casual riders.

---

# Dashboard Preview

![dashboard](https://github.com/dyonsetio21/data_analysis_portfolio/blob/main/06_cyclistic_bike_share_analysis/tableau/dashboard.png)

---

## Dashboard Highlights

The interactive dashboard enables users to explore:

- Ride Volume Trends
- Ride Duration Comparison
- Rider Type Distribution
- Seasonal Usage Patterns
- Top Start Stations
- Bike Type Preference

---

# Business Recommendations

Based on the analysis:

- Launch weekend membership promotions targeting casual riders.
- Promote membership savings for users with longer average ride durations.
- Focus marketing campaigns during the summer season when casual rider activity is highest.
- Expand bicycle availability at high-demand recreational and tourist stations.
- Continue enhancing membership benefits to maintain strong weekday usage among annual members.

---

# Resources

## Tableau Dashboard

[Cyclistic Rider Behavior Dashboard (Tableau Public)](https://public.tableau.com/views/CyclisticRiderBehavior_17620875398590/CyclisticRiderBehaviorDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Dataset

Divvy Trip Data (2020–2021)

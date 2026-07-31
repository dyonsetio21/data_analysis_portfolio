# Call Center Operational & Performance Dashboard

## Project Overview

This project is an advanced re-architecting and enhancement of a call center operational analytics project originally completed as part of the **PwC Switzerland Power BI Virtual Experience Program on Forage**.

While the initial simulation provided a basic operational overview in Power BI, this project rebuilds and elevates the dashboard using **Tableau Desktop / Tableau Public**. The goal is to provide deeper, highly actionable insights—including peak call density analysis, topic breakdown, and individual agent performance quality matrices—to help call center managers optimize service quality and workforce allocation.

---

## What’s New in This Version (Re-Architecture & Enhancements)

Compared to the baseline solution, this enhanced Tableau dashboard introduces:
- **Redesigned Modern Card Layout:** Clean UI with dark navy executive headers, structured cards, and uniform padding for seamless readability.
- **Peak Call Hours Heatmap:** A new time-density matrix (Day of Week vs. Hour) to identify operational bottlenecks and assist in shift scheduling.
- **CSAT Conditional Formatting:** Targeted color-coding on agent CSAT ratings to immediately distinguish top performers from agents needing coaching.
- **Dual-Axis Volume & CSAT Trend:** Integrated monthly trend analysis comparing total call volume against customer satisfaction scores.
- **Interactive Cross-Filtering:** Enabled full dashboard interaction using Tableau Actions, allowing dynamic filtering by topic, agent, or peak hour.

---

## Business Problem

Call center operations require constant monitoring to balance customer satisfaction with staffing efficiency. Without granular insights into *when* call volume peaks or *which* specific topics drive customer inquiries, management struggles with delayed response times and inconsistent service resolution.

Key business questions addressed in this analysis:
1. **Operational Efficiency:** What is the average response time and overall call resolution rate?
2. **Workforce Allocation:** At what specific days and hours do call volumes peak?
3. **Agent Quality:** Which agents maintain high CSAT scores while handling high call volumes, and who requires coaching?
4. **Customer Drivers:** What inquiry topics drive the highest volume of calls?

---

## Dataset Overview

The analysis uses the call center dataset provided by **PwC Switzerland (Forage)**, covering Q1 2021 (January – March 2021) with 4,054 records:

- **Call Identification & Agent:** Call ID, Assigned Agent
- **Timestamps:** Date, Time, Hour of Call
- **Operational Metrics:** Speed of Answer (sec), Talk Duration (sec)
- **Status & Outcome:** Answer Status (Y/N), Resolution Status (Y/N)
- **Quality & Topic:** Inquiry Topic, Customer Satisfaction Rating (1–5)

---

## Tools Used

- **Tableau Desktop / Tableau Public** (Dashboarding, LOD Calculations, & Data Visualization)
- **Microsoft Excel / Python (Pandas)** (Initial Data Inspection & Preparation)

---

## Dashboard Preview

![Call Center Operational & Performance Dashboard](tableau/call_center_operational_%26-performance_dashboard.png)

> 🔗 **Interactive Version:** [View Live Dashboard on Tableau Public](https://public.tableau.com/views/CallCenterOperationalPerformanceDashboard/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

---

## Key Performance Indicators (Q1 2021 Summary)

- **Total Calls:** 4,054 calls
- **Answered Rate:** 81.1% (3,287 handled calls)
- **Resolution Rate:** 89.9% (2,956 calls resolved)
- **Avg Speed of Answer (ASA):** 67.5 seconds
- **Avg Handling / Talk Duration:** 224.9 seconds (~3.7 minutes)
- **Avg Customer Satisfaction (CSAT):** 3.40 / 5.00

---

## Key Business Insights

### 1. Operational Bottlenecks & Response Time
* **High Resolution, Delayed Response:** While the resolution rate is strong at **89.9%**, the average speed of answer is **67.5 seconds**—significantly above the industry target threshold of under 30 seconds.

### 2. Peak Call Hours Density (Heatmap Analysis)
* **Shift Optimization:** Call volume peaks consistently between **11:00 AM** and **1:00 PM – 2:00 PM** across weekdays and weekends. Mondays and Saturdays show the highest concentration of late-morning calls, highlighting the need for staggered shift schedules during midday slots.

### 3. Customer Inquiry Drivers
* **Top Topics:** Call volume is heavily driven by **Streaming** (847 calls) and **Payment Related** issues (818 calls), followed by Technical Support (805 calls). These two categories represent primary candidates for automated self-service or FAQ improvements.

### 4. Agent Performance & Quality Matrix
* **Top Quality Performers:** Martha (**3.47 CSAT**) and Dan (**3.45 CSAT**) achieved the highest customer satisfaction ratings while maintaining strong resolution rates above 89%.
* **Coaching Opportunities:** Joe (**3.33 CSAT**, 71.0s ASA) and Becky (**3.37 CSAT**) recorded lower satisfaction scores and longer response times, signaling a need for targeted service and workflow coaching.

---

## Actionable Recommendations

1. **Optimize Staffing Schedules:** Reallocate agent shifts to increase coverage during the **11:00 AM – 2:00 PM** peak window to bring the average speed of answer closer to the <30-second target.
2. **Deflect High-Volume Inquiries:** Develop automated IVR workflows or self-service options for common **Streaming** and **Payment** inquiries to reduce incoming call pressure.
3. **Targeted Agent Coaching:** Pair lower-CSAT agents (Joe & Becky) with top-performing mentors (Martha & Dan) to improve call handling quality and reduce resolution delays.
4. **Monitor Real-Time KPIs:** Utilize the interactive Tableau dashboard for continuous daily monitoring of ASA and resolution rates.

---

## Acknowledgments

This project dataset and baseline scenario originated from the **PwC Switzerland Power BI Virtual Experience Program on Forage**. All dashboard design enhancements, custom heatmaps, and Tableau re-architecting were independently developed.

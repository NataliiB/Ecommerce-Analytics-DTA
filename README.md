# eCommerce Analysis: From SQL Discovery to Predictive Insights

## Project Overview

This project is a multi-stage data investigation of an eCommerce dataset focused on identifying true revenue drivers and evaluating customer behavior patterns.

By combining:

- **SQL** for structured data extraction  
- **Tableau** for business intelligence and visualization  
- **Python** for statistical testing and machine learning  

I challenged common marketing assumptions regarding **age-based segmentation** and validated findings using both classical statistics and ML models.


## Technical Stack

**Database**
- Google BigQuery (SQL)

**BI & Visualization**
- Tableau  
- Figma  

**Data Science (Python)**
- Pandas  
- Scikit-learn (Random Forest)  
- Statsmodels (OLS Regression)  

## Key Research Stages

### Data Exploration (SQL)

- Analyzed user acquisition patterns in key markets (e.g., Brazil).
- Identified inventory structure, with **Intimates** and **Jeans** as leading categories.
- Isolated high-value transactions to identify potential VIP customer segments.
- Explored geographic distribution of active users.

**Outcome:** Built a structured understanding of customers, transactions, and inventory dynamics.


### Revenue & Behavioral Analysis (Tableau)

- **Seasonality Insight:**  
  Identified a consistent revenue peak in **December**, followed by a significant slump in **February**.

- **AOV Paradox:**  
  Discounts increase **Gross Order Value**, but reduce **Net Revenue margin by ~6.6%**.

- **Demographic Peak:**  
  Observed strong sales concentration in the **25–45 age group**.

**Key Business Question:**  
Is the age peak driven by higher spending behavior or simply higher customer volume?


### Statistical Testing & Machine Learning (Python)

#### Hypothesis Testing (OLS Regression)

- Tested relationship between age and transaction value.
- Result:  
  - $R^2 \approx 0.000$  
  - $P > 0.05$

**Conclusion:**  
Age is not a statistically significant predictor of spending.

The observed sales peak in the 25–45 group is a **volume effect**, not a behavioral one.


#### Machine Learning (Random Forest)

Feature importance analysis identified:

1. **Discount Availed**
2. **Gender**

as the strongest predictors of transaction value.

Age ranked significantly lower.

**Model Insight:**  
Behavioral factors outweigh demographic assumptions.

## Strategic Recommendations

### Shift Segmentation Strategy
Move from age-based targeting to:

- Behavioral segmentation  
- Gender-based personalization  
- Promotion sensitivity modeling  


### Discount Optimization

- Implement a **discount cap** to prevent margin erosion.
- Introduce threshold-based promotions (minimum basket value).
- Address negative net revenue anomalies caused by excessive discounts.


### Retention-Focused Campaigns

- Use the **February dip** period for aggressive retention strategies.
- Launch post-holiday loyalty incentives.
- Reduce seasonal volatility through targeted campaigns.

---

## 📂 Project Navigation

- **Report.md** – Full technical analysis, methodology, and detailed visualizations.
- **notebooks/** – Python scripts for OLS and Random Forest models.
- **visuals/** – High-resolution Tableau dashboards and ML plots.
- **sql/** – SQL queries used for data exploration.



## Core Insight

Revenue growth in this dataset is driven primarily by:

- Customer volume  
- Discount mechanics  
- Behavioral dynamics  

Not by age-based purchasing power.


## What This Project Demonstrates

- End-to-end analytical workflow (SQL → BI → ML → Strategy)
- Statistical validation of business hypotheses
- Ability to separate volume effects from behavioral effects
- Data-driven strategic thinking beyond dashboard reporting
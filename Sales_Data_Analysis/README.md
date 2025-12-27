# **📈 Walmart Sales Data Analysis**
## Background & Overview

The goal of this project is to analyze real‑world retail data (from Walmart) to uncover sales trends, store performance, and insights that could be valuable for business decision‑making. I chose the publicly available Walmart recruiting/stores sales dataset because it:

Contains hundreds of thousands of sales observations across many stores and departments over time.

Offers multiple tables (sales data, store metadata, weekly features like holidays/markdowns) — a realistic scenario similar to what data analysts face in companies.

Allows me to demonstrate full‑stack data work: from raw CSV → database → SQL analysis → business‑oriented insights.

The project aims to answer questions such as: Which stores or store types generate most revenue? How do sales evolve over time? Does holiday/weekend/seasonality impact sales? Which departments consistently perform well?

## Data Structure Overview

The dataset consists of three main CSV files (now loaded into a database):

| Table / Source | Contents / Description|
| ------------- | ------------- |
| train.csv | Weekly sales data for each store and department|
| stores.csv  | Metadata about store type and square footage  |
| features.csv  | External factors such as fuel prices, temperature, and holidays |

**Key Columns**
- train: store, dept, date, weekly_sales, is_holiday
- stores: store, type, size
- features: store, date, temperature, fuel_price, cpi, unemployment, is_holiday

## Executive Summary

**High-level findings:** 

- **Store Type A locations contribute the highest total sales:** $4.33B vs. $2B for Type B and $0.41B for Type C.
- **Holiday weeks show noticeable spikes in sales:** Top single-store holiday week sales exceeded $693K.
- **Sales vary significantly by department,** with Department 92 averaging $75K/week, leading overall performance.
- **Several stores demonstrate consistent underperformance** (e.g., stores outside the top 5) and may benefit from targeted promotional strategies.

Detailed insights are shown below.

## Insights Deep Dive
📊 Store‑level Performance

| Store | Total Sales (USD) |
| ------------- | ------------- |
| 20 | 301,397,792.46 |
| 4  | 299,543,953.38 |
| 14 | 288,999,911.34 |
| 13 | 286,517,703.80 |
| 2 | 275,382,440.98 |

**Insight:** These top 5 stores consistently outperform others, contributing a large share of total revenue.

**Store type comparison:**
*Type A stores* outperform Types B and C in total sales ($4.33B vs $2B and $0.41B) — suggesting larger or better-performing outlets yield higher revenue despite potentially higher overheads.

## 🛒 Department Analysis

**Top departments by average weekly sales:**

| Department | Avg Weekly Sales (USD) |
| ------------- | ------------- |
| 92 | 75,204.87 |
| 95  | 69,824.42 |
| 38 | 61,090.62 |
| 72 | 50,566.52 |
| 65 | 45,441.71 |

**Insight:** Departments 92 and 95 are the primary revenue drivers, while some departments show seasonal variation (e.g., peaks around holiday periods).

## 📆 Time Trends & Seasonality

**Weekly sales trend (top weeks):**

| Date | Total Sales (USD) |
| ------------- | ------------- |
| 2010-02-05 | 49,750,740.50 |
| 2010-02-12 | 48,336,677.63 |
| 2010-02-19 | 48,276,993.78 |
| 2010-02-26 | 43,968,571.13 |
| 2010-03-05 | 46,871,470.30 |

**Insight:** Weekly sales fluctuate between $44M–$50M, highlighting trends over time and enabling forecasts for inventory and staffing.

## 💡 Holiday & External Factors Impact

**Top holiday week sales:**

| Date | Store | Weekly Sales (USD) |
| ------------- | ------------- | ------------- |
| 2010-11-26 | 10 | 693,099.36 |
| 2011-11-25 | 35 | 649,770.18 |
| 2011-11-25 | 10 | 630,999.19 |
| 2010-11-26 | 35 | 627,962.93 |
| 2010-11-26 | 14 | 474,330.10 |

**Insight:** Holidays significantly boost sales, with the highest single-store holiday week exceeding $693K.

**Total sales by store type:**

| Store Type | Total Sales (USD) |
| ------------- | ------------- |
| A | 4,331,014,722.75 |
| B | 2,000,700,736.82 |
| C | 405,503,527.54 |

**Insight:** Type A stores dominate revenue, suggesting strategic focus on high-performing store types.

## Recommendations

- Focus inventory & promotions on top-performing departments ahead of holiday seasons (Nov–Dec).
- Expand or prioritize store Type A for resource allocation and potential growth.
- Plan markdowns strategically during off-peak months to smooth seasonal dips.
- Leverage holiday weeks for marketing campaigns to maximize uplift.
- Monitor external economic indicators like CPI and fuel prices to anticipate demand changes.

## 📊 Executive Dashboard

This dashboard summarizes key revenue drivers, top-performing stores, and seasonal trends to support executive decision-making around inventory planning and promotions.

<img width="1189" height="668" alt="Screenshot 2025-12-27 at 3 08 05 PM" src="https://github.com/user-attachments/assets/4ea29ca1-5cdc-43fb-bbf5-a13705b35253" />

## How to Reproduce / Use This Project
- Clone repo
git clone <your-repo-url>
cd Sales_Data_Analysis

- Load data into PostgreSQL
psql walmart_sales < sql/schema.sql
\COPY train FROM 'Raw_Data/train.csv' CSV HEADER;
\COPY stores FROM 'Raw_Data/stores.csv' CSV HEADER;
\COPY features FROM 'Raw_Data/features.csv' CSV HEADER NULL 'NA';

- Run analysis queries
psql walmart_sales < sql/analysis_queries.sql


(Alternatively — run queries inside VS Code or export results to CSV and visualize in your preferred tool.)

## Conclusion & Next Steps

This project demonstrates how real-world retail data can be structured, imported, and analyzed to generate actionable business insights. Next steps:
- Build a visualization dashboard using Tableau or Python (matplotlib/seaborn) for clear trend presentation.
- Extend analysis to predict future sales for inventory planning and demand forecasting.
- Incorporate additional data (e.g., promotions, weather, demographics) to enrich insights and improve predictive accuracy.

## Credits & References

- Retail dataset from Kaggle: Walmart Recruiting – Store Sales Forecasting

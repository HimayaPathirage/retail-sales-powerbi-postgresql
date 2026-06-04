# Retail Sales Dashboard — PostgreSQL + Power BI

## Project Overview
An end-to-end data analytics project analyzing retail 
sales performance using PostgreSQL for data storage and 
SQL analysis, connected to Power BI for interactive 
visualization.

## Tech Stack
- Database: PostgreSQL 18
- BI Tool: Microsoft Power BI Desktop
- Dataset: Superstore Sales (9,994 rows)
- SQL Features: Views, Aggregations, Date functions

## Dashboard Pages
1. Executive Summary — KPIs, Revenue by Category, 
   Sales by Region
   
   ![Executive Summary](/page1_executive_summary.png)
   
2. Sales Trends — Monthly trend, Sub-category analysis
   
   ![Sales Trends](/page2_sales_trends.png)

3. Regional Performance — Map, Matrix breakdown
 
   ![Regional Performance](/page3_regional_performance.png)
   
4. Customer Analysis — Top 10 customers, Scatter plot, 
   Segments
   
   ![Customer Analysis](/page4_customer_analysis.png)
   
## Project Highlights

- Built a complete end-to-end data pipeline from raw CSV 
  to interactive dashboard
- Designed and implemented a PostgreSQL 18 database with 
  structured tables and optimized views
- Wrote SQL queries using aggregations, date functions, 
  and window-ready views for clean data delivery
- Connected Power BI directly to PostgreSQL using a 
  database view (vw_sales_summary) — not a flat file
- Built 4 interactive dashboard pages with slicers, 
  KPI cards, maps, scatter plots and matrix tables
- Applied DAX measures for dynamic Profit Margin % 
  calculation inside Power BI
- Followed a real industry workflow:
  Raw Data → PostgreSQL → SQL Views → Power BI Dashboard

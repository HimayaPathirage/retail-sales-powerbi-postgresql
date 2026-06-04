# Retail Sales Dashboard — PostgreSQL + Power BI

## Project Overview
An end-to-end data analytics project that demonstrates 
a real industry workflow — from raw CSV data to a 
structured PostgreSQL database, through SQL analysis, 
to an interactive Power BI dashboard with 4 pages and 
dynamic filtering.

## Tech Stack
| Tool | Purpose |
|---|---|
| PostgreSQL 18 | Database engine & data storage |
| pgAdmin 4 | Database management & SQL execution |
| SQL | Data modeling, views, aggregations |
| Power BI Desktop | Interactive dashboard & DAX measures |
| DAX | Dynamic KPI calculations inside Power BI |
| Dataset | Superstore Sales — 9,994 rows |

---
## Project Highlights
- Built a complete end-to-end data pipeline from raw 
  CSV to interactive dashboard
- Designed and implemented a PostgreSQL 18 database 
  with structured tables and optimized views
- Wrote SQL queries using aggregations, date functions,
  and views for clean data delivery to Power BI
- Connected Power BI directly to PostgreSQL using a 
  database view (vw_sales_summary) — not a flat file
- Built 4 interactive dashboard pages with slicers, 
  KPI cards, maps, scatter plots and matrix tables
- Applied DAX measures for dynamic Profit Margin % 
  calculation inside Power BI
- Followed a real industry workflow:
  Raw Data → PostgreSQL → SQL Views → Power BI
  
---

  ## Database Structure
```sql
-- Main table
sales (row_id, order_id, order_date, ship_date,
       ship_mode, customer_id, customer_name,
       segment, country, city, state, postal_code,
       region, product_id, category, sub_category,
       product_name, sales, quantity, discount, profit)

-- View used by Power BI
vw_sales_summary (all columns + profit_margin_pct)
```

---

## Dashboard Pages
1. Executive Summary — KPIs, Revenue by Category, 
   Sales by Region
   
   ![Executive Summary](/page1_executive_summary.png)

- 4 KPI cards: Total Sales, Total Profit, 
  Total Orders, Profit Margin %
- Revenue by Category bar chart
- Sales by Region donut chart
- Year and Region interactive slicers

2. Sales Trends — Monthly trend, Sub-category analysis
   
   ![Sales Trends](/page2_sales_trends.png)

- Monthly Sales & Profit dual-axis line chart
- Sales by Sub-Category column chart
- Sales vs Profit by Category clustered bar chart
- Year slicer for time filtering
  
3. Regional Performance — Map, Matrix breakdown
 
   ![Regional Performance](/page3_regional_performance.png)

- US Map with regional color coding
- Sales & Profit by Region clustered bar chart
- Sales Breakdown matrix by Region & Category
- Profit Distribution donut chart
- Region tile slicer
  
4. Customer Analysis — Top 10 customers, Scatter plot, 
   Segments
   
   ![Customer Analysis](/page4_customer_analysis.png)
- Top 10 Customers by Sales bar chart
- Sales vs Profit scatter plot by segment
- Sales by Customer Segment donut chart
- Total Customers and Avg Order Value KPI cards
- Segment tile slicer

---
## SQL Skills Demonstrated
```sql
-- Aggregations
SUM(), AVG(), COUNT(), ROUND()

-- Date functions  
TO_CHAR(), EXTRACT()

-- Database objects
CREATE TABLE, CREATE VIEW, ALTER TABLE

-- Data loading
\copy command for CSV import

-- Filtering & sorting
GROUP BY, ORDER BY, HAVING, LIMIT, NULLIF()
```

---
## Author
**Himaya Pathirage**  
Aspiring Data Analyst  
[LinkedIn](https://linkedin.com/in/himaya-pathirage-b94798361) | 
[GitHub](https://github.com/HimayaPathirage)

---

*This project was built as part of my data analyst 
portfolio to demonstrate real-world SQL database 
management and Power BI dashboard development skills.*

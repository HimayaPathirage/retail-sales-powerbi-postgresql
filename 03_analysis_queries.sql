-- Revenue & profit by category
SELECT
  category,
  ROUND(SUM(sales)::NUMERIC, 2)    AS total_revenue,
  ROUND(SUM(profit)::NUMERIC, 2)   AS total_profit,
  ROUND(AVG(discount)::NUMERIC, 2) AS avg_discount
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

-- Monthly sales trend
SELECT
  TO_CHAR(order_date, 'YYYY-MM')  AS month,
  ROUND(SUM(sales)::NUMERIC, 2)   AS monthly_sales,
  ROUND(SUM(profit)::NUMERIC, 2)  AS monthly_profit
FROM sales
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month;

-- Top 10 customers
SELECT
  customer_name,
  ROUND(SUM(sales)::NUMERIC, 2) AS total_sales,
  COUNT(order_id)               AS total_orders
FROM sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Regional breakdown
SELECT
  region,
  state,
  ROUND(SUM(sales)::NUMERIC, 2)  AS total_sales,
  ROUND(SUM(profit)::NUMERIC, 2) AS total_profit
FROM sales
GROUP BY region, state
ORDER BY total_sales DESC;
CREATE VIEW vw_sales_summary AS
SELECT
  row_id,
  order_id,
  order_date,
  customer_name,
  segment,
  region,
  state,
  category,
  sub_category,
  product_name,
  sales,
  quantity,
  discount,
  profit,
  ROUND((profit / NULLIF(sales, 0) * 100)::NUMERIC, 2)
    AS profit_margin_pct
FROM sales;
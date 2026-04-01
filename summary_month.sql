CREATE TABLE summary_month AS
SELECT Year,
       Month,
       SUM(Revenue) AS total_sales,
       SUM(Units_Sold) AS total_units
FROM sales_base
GROUP BY Year, Month;

SELECT * FROM summary_month;
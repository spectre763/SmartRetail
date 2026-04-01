CREATE TABLE summary_date AS
SELECT Date,
       SUM(Revenue) AS total_sales,
       SUM(Units_Sold) AS total_units,
       AVG(Discount) AS avg_discount
FROM sales_base
GROUP BY Date;

SELECT * FROM summary_date;
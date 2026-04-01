CREATE TABLE summary_category AS
SELECT Category,
       SUM(Revenue) AS total_sales,
       SUM(Units_Sold) AS total_units,
       AVG(Revenue) AS avg_sales,
       AVG(Discount) AS avg_discount
FROM sales_base
GROUP BY Category;

SELECT * FROM summary_category;
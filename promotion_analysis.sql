CREATE TABLE promotion_analysis AS
SELECT Promotion,
       SUM(Revenue) AS total_sales,
       SUM(Units_Sold) AS total_units,
       AVG(Discount) AS avg_discount
FROM sales_base
GROUP BY Promotion;

SELECT * FROM promotion_analysis;
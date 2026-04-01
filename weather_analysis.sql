CREATE TABLE weather_analysis AS
SELECT Weather_Condition,
       SUM(Revenue) AS total_sales,
       SUM(Units_Sold) AS total_units
FROM sales_base
GROUP BY Weather_Condition;

SELECT * FROM weather_analysis;
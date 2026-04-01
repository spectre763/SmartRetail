CREATE TABLE season_analysis AS
SELECT Seasonality,
       SUM(Revenue) AS total_sales,
       SUM(Units_Sold) AS total_units
FROM sales_base
GROUP BY Seasonality;

SELECT * FROM season_analysis;
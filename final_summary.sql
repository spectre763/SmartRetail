CREATE TABLE final_summary AS
SELECT Date,
       Store_ID,
       Region,
       Category,
       MAX(Seasonality) AS Seasonality,
       MAX(Promotion) AS Promotion,
       MAX(Weather_Condition) AS Weather_Condition,
       SUM(Revenue) AS total_sales,
       SUM(Units_Sold) AS total_units,
       AVG(Inventory_Level) AS avg_inventory,
       AVG(Demand) AS avg_demand,
       AVG(Discount) AS avg_discount
FROM sales_base
GROUP BY
Date,
Store_ID,
Region,
Category;

SELECT * FROM final_summary;
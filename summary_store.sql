CREATE TABLE summary_store AS
SELECT Store_ID,
       SUM(Revenue) AS total_sales,
       SUM(Units_Sold) AS total_units,
       AVG(Inventory_Level) AS avg_inventory,
       AVG(Demand) AS avg_demand
FROM sales_base
GROUP BY Store_ID;

SELECT * FROM summary_store;
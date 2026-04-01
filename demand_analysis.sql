CREATE TABLE demand_analysis AS
SELECT Category,
       AVG(Demand) AS avg_demand,
       AVG(Inventory_Level) AS avg_inventory,
       SUM(Revenue) AS total_sales
FROM sales_base
GROUP BY Category;

SELECT * FROM demand_analysis;
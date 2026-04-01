CREATE TABLE summary_region AS
SELECT Region,
       SUM(Revenue) AS total_sales,
       SUM(Units_Sold) AS total_units,
       AVG(Inventory_Level) AS avg_inventory,
       AVG(Discount) AS avg_discount
FROM sales_base
GROUP BY Region;

SELECT * FROM summary_region;
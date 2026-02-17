SELECT * FROM orders


CREATE VIEW REGION_BASED_PRODUCT_SALES AS 


SELECT product_name, region, sum(sales) as Total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY product_name, region
ORDER BY region, product_name


SELECT * FROM REGION_BASED_PRODUCT_SALES


------ Total of Each Region -----


CREATE VIEW TOTAL_SALES_EACH_REGION AS 

SELECT region, SUM(Total_sales)  FROM REGION_BASED_PRODUCT_SALES AS NORTH_SALES
WHERE region = 'North' OR region ='East' OR  region = 'South' or region = 'West'
GROUP BY region

SELECT * FROM TOTAL_SALES_EACH_REGION



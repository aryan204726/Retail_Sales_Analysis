-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

SELECT category , SUM(Total_sale) AS Total_Sales
FROM retail_sales
GROUP BY category;
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales

SELECT customer_id , SUM(Total_sale) AS Total_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY Total_sales DESC LIMIT 5;


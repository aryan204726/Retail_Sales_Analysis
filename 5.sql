-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

SELECT * 
FROM retail_sales
WHERE Total_sale > 1000
ORDER BY Total_sale ASC;
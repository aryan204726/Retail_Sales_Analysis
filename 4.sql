-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

SELECT ROUND(AVG(age),0) AS Average
FROM retail_sales
WHERE category = 'Beauty';

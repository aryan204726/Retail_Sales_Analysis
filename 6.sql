-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) 
--     made by each gender in each category.

SELECT   category , gender , COUNT(Transactions_id) AS Total_transaction
FROM retail_sales
GROUP BY gender , category
ORDER BY 1;
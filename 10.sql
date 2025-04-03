-- Q.10 Write a SQL query to create each shift and number of orders 
-- (Example Morning <12, Afternoon Between 12 & 17, Evening >17)

SELECT
	CASE 
		WHEN HOUR(sale_time) < 12 THEN 'MORNING'
        WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'AFTERNOON'
        ELSE 'EVENING'
        END AS Shift,
        COUNT(Transactions_id) AS Total_orders
        FROM retail_sales
        GROUP BY Shift;
        
        
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year


SELECT *
FROM
       (SELECT 
           YEAR(sale_date) AS years,
		   MONTH(sale_date) AS months,
           ROUND(AVG(Total_sale),2) AS Avg_sale,
		   RANK() OVER(PARTITION BY YEAR(sale_date) ORDER BY AVG(Total_sale) DESC) AS RANKS
           FROM retail_sales
		   GROUP BY 1 , 2) AS T1
           WHERE RANKS = 1;
	       -- ORDER BY 1,  3 DESC;
           
           
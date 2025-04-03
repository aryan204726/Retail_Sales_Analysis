CREATE DATABASE Retail_Sales_Analysis;
USE Retail_Sales_Analysis;

DROP TABLE  IF EXISTS Retail_Sales;
CREATE TABLE Retail_Sales (
Transactions_id INT,
Sale_date DATE,
Sale_time TIME,
customer_id INT,
gender VARCHAR(15),
age INT,
category VARCHAR(15),
quantiy INT,
price_per_unit FLOAT,
cogs FLOAT,
Total_sale FLOAT,
PRIMARY KEY(Transactions_id)
);

-- DATA CLEANING

SELECT * 
FROM Retail_sales
WHERE Transactions_id IS NULL
OR
 Sale_date IS NULL
OR
 Sale_time IS NULL
OR
 customer_id IS NULL
OR 
 gender IS NULL
OR 
 age IS NULL   
OR 
 category IS NULL
OR 
 quantiy IS NULL
OR 
 price_per_unit IS NULL
OR
 cogs IS NULL
OR 
 Total_sale IS NULL;
 
 -- DATA EXPLORATION
 -- how many sales we have 
  S
  SELECT COUNT(*)  AS Total_sale 
  FROM retail_sales; 
  
  -- how many unique customer we have 
  SELECT COUNT(DISTINCT customer_id) AS Total_customer
  FROM retail_sales;

-- how many  category we have 
 SELECT  DISTINCT category AS Total_customer
 FROM retail_sales;
 




USE ecommerece_db;
SELECT * FROM orders;
#Total Sales
SELECT SUM(sales) FROM orders;
#Total Profit
SELECT SUM(profit) FROM orders;
#category performance
SELECT category,round(SUM(sales)),round(SUM(profit)) FROM orders GROUP BY category;
#Region Performance
SELECT region,round(SUM(profit)) FROM orders GROUP BY region;
#Checking for missing values
SELECT COUNT(*) AS missing_customer_names FROM orders WHERE customer_id IS NULL OR customer_id = ' ';
#Checking for duplicate values
SELECT row_id , COUNT(*) FROM orders group by row_id HAVING COUNT(*) > 1; 
#Top 10 Customers by sales
SELECT customer_id,round(SUM(sales)) AS total_sales FROM orders GROUP BY customer_id
ORDER BY total_sales DESC LIMIT 10;
#Top 10 products
SELECT product_id,round(SUM(profit)) AS total_profit FROM orders GROUP BY product_id ORDER BY total_profit DESC LIMIT 10;
#Loss Making Products
SELECT product_id,round(SUM(profit)) AS total_profit FROM orders GROUP BY product_id HAVING total_profit< 0 ORDER BY total_profit;
#Customers segment analysis
SELECT segment ,round(SUM(sales)) as total_sales,round(SUM(profit)) as total_profit from orders GROUP BY segment;
#category sub_category analysis
SELECT category,sub_category,ROUND(SUM(sales)) as total_sales,ROUND(SUM(profit)) AS total_profit from orders GROUP BY category,sub_category ORDER BY total_sales DESC;
#monthly trends
SELECT order_date,str_to_date(order_date,'%d/%m/%Y') AS converted_date FROM orders LIMIT 10;
ALTER table orders ADD COLUMN order_date_new DATE;
SET SQL_SAFE_UPDATES = 0;
UPDATE orders SET order_date_new = STR_TO_DATE(order_date,'%m/%d/%Y');
SET SQL_SAFE_UPDATES = 1;
SELECT order_date,order_date_new FROM orders LIMIT 10;
SELECT date_format(order_date_new,'%Y-%m') as month,ROUND(SUM(sales)) AS total_sales,ROUND(SUM(profit)) as total_profit from orders
 GROUP BY month 
 ORDER BY month;
 #Best sales month
 SELECT date_format(order_date_new,'%Y-%m') as month ,ROUND(SUM(sales)) AS total_sales from orders GROUP BY month ORDER BY total_sales LIMIT 5;
 #Best profit month
 SELECT date_format(order_date_new,'%Y-%m') as month ,ROUND(SUM(profit)) as total_profit from orders group by month ORDER BY total_profit DESC LIMIT 5;
 #Yearly Growth
 SELECT year(order_date_new) AS year ,ROUND(SUM(sales)) AS total_sales FROM orders GROUP BY year ORDER BY year; 
SELECT COUNT(DISTINCT customer_id)
FROM orders;
SELECT COUNT(*) FROM orders;
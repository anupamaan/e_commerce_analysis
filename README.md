# E-Commerce Sales Analysis using MySQL & Power BI

## Project Overview

This project analyzes e-commerce sales data using MySQL and Power BI to uncover business insights related to sales performance, profitability, customer behavior, and regional trends.

The project demonstrates SQL querying, data cleaning, business analysis, and dashboard development skills commonly used in Data Analyst roles.

---

## Objectives

* Analyze sales and profit performance.
* Identify top customers and products.
* Evaluate regional and category-wise sales trends.
* Monitor monthly sales growth.
* Build an interactive Power BI dashboard for business decision-making.

---

## Tools Used

* MySQL Workbench
* MySQL Database
* Power BI Desktop
* GitHub

---

## Dataset Information

The dataset contains order-level transaction data including:

* Order ID
* Order Date
* Customer Information
* Product Information
* Sales
* Quantity
* Discount
* Profit
* Region

Total Records: 9,694+

---

## SQL Analysis Performed

### Data Validation

* Checked for missing values
* Verified data integrity
* Converted text dates into DATE format

### Business Analysis

* Total Sales
* Total Profit
* Total Orders
* Total Customers
* Sales by Category
* Profit by Category
* Sales by Region
* Top 10 Customers by Sales
* Top Products by Profit
* Monthly Sales Trend Analysis

---

## Key SQL Queries

### Total Sales

```sql
SELECT ROUND(SUM(sales),2) AS total_sales
FROM orders;
```

### Total Profit

```sql
SELECT ROUND(SUM(profit),2) AS total_profit
FROM orders;
```

### Total Orders

```sql
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;
```

### Total Customers

```sql
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM orders;
```

---

## Power BI Dashboard

The dashboard includes:

### KPI Cards

* Total Sales
* Total Profit
* Total Orders
* Total Customers

### Visualizations

* Sales by Category
* Profit by Category
* Monthly Sales Trend
* Sales by Region
* Top 10 Customers

### Interactive Filters

* Region
* Category
* Segment
* Order Date

---

## Business Insights

* Identified top-performing categories and regions.
* Analyzed customer purchasing behavior.
* Tracked monthly sales and profit trends.
* Evaluated profitability across different product categories.

---

## Project Structure

Ecommerce-Sales-Analysis/

├── data/

│ └── orders.csv

├── sql/

│ └── sales_analysis.sql

├── dashboard/

│ └── sales_dashboard_using_sql.pbix

├── screenshots/

│ ├── dashboard_overview.png

└── README.md

---



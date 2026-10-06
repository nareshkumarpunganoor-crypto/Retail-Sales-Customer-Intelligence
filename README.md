# 📊 Retail Sales & Customer Intelligence

A data analytics and business intelligence project that analyzes retail sales, customer behavior, product performance, regional performance, and payment trends using **MySQL, SQL, DAX, and Power BI**.

---

## 🎯 Project Objective

The objective of this project is to transform retail transaction data into meaningful business insights through SQL analysis and an interactive Power BI dashboard.

The project focuses on:

- 📈 Sales and revenue analysis
- 👥 Customer behavior and purchasing patterns
- 🛍️ Product performance
- 🌍 Regional sales performance
- 🏷️ Category-wise analysis
- 💳 Payment method analysis
- 📅 Monthly revenue trends
- 🏆 Top customers and products

---

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| **MySQL** | Database management and data storage |
| **SQL** | Data analysis and business queries |
| **Power BI** | Interactive dashboards and visualization |
| **DAX** | KPI and analytical calculations |
| **GitHub** | Project documentation and portfolio |

---

## 📂 Project Structure

```text
Retail-Sales-Customer-Intelligence/
│
├── dataset/
│   └── sales.csv
│
├── sql/
│   └── analysis_queries.sql
│
├── powerbi/
│   └── Retail_Sales_Customer_Intelligence.pbix
│
├── screenshots/
│   ├── executive_overview.png
│   ├── customer_intelligence.png
│   └── product_regional_analysis.png
│
└── README.md

📊 Dataset

The dataset contains 5,000 retail transactions with information about orders, customers, products, categories, regions, quantities, prices, discounts, and payment methods.

Dataset Columns
Column	Description
Order_ID	Unique order identifier
Order_Date	Date of the transaction
Customer_ID	Customer identifier
Product_ID	Product identifier
Product_Name	Name of the product
Category	Product category
Region	Sales region
Quantity	Quantity purchased
Unit_Price	Price per unit
Discount	Applied discount
Payment_Method	Payment method used
Dataset Summary
5,000 transactions
1,000 customers
20 products
3 product categories
5 regions
Data period: 2025
💰 Key Business Metrics
Metric	Value
Total Revenue	₹123.08M
Total Orders	5,000
Total Customers	1,000
Total Quantity Sold	15,000
Average Order Value	₹24.62K
📑 Power BI Dashboard

The Power BI report contains three interactive pages.

1️⃣ Executive Sales Overview

Provides a high-level view of overall business performance.

Includes
Total Revenue
Total Orders
Total Customers
Total Quantity
Average Order Value
Monthly Revenue Trend
Revenue by Category
Revenue by Region
Interactive slicers
Dashboard Preview
<img width="1204" height="680" alt="Screenshot 2026-10-06 205301" src="https://github.com/user-attachments/assets/cdeed023-e210-405f-9f25-b6858c961988" />

2️⃣ Customer Intelligence

Focuses on customer value and purchasing behavior.

Includes
Total Customers
Average Customer Revenue
Average Orders per Customer
Returning Customers
Top 10 Customers
Customer Revenue by Category
Customer Revenue by Payment Method
Customer Performance Details
Customer Revenue by Region
Dashboard Preview
<img width="1211" height="681" alt="Screenshot 2026-10-06 205344" src="https://github.com/user-attachments/assets/8ca42230-2894-40d5-8c2d-64aeac58903f" />

3️⃣ Product & Regional Analysis

Provides detailed product and regional performance analysis.

Includes
Top 10 Products by Revenue
Products by Quantity Sold
Revenue by Region
Monthly Revenue by Category
Category × Region Revenue Matrix
Interactive filtering
Dashboard Preview
<img width="1209" height="680" alt="Screenshot 2026-10-06 205414" src="https://github.com/user-attachments/assets/ef649e34-81f4-423f-85b8-610b6ae60d4d" />

🔍 SQL Analysis

The project includes SQL queries for:

Total revenue calculation
Total orders and customers
Average Order Value
Monthly revenue analysis
Category performance
Regional performance
Product performance
Payment method analysis
Top customer analysis
Customer ranking using RANK()
Month-over-month analysis using LAG()
Category and region analysis
Advanced SQL Concepts Used
GROUP BY
ORDER BY
Aggregate Functions
RANK()
LAG()
Window Functions
CTEs
LIMIT
📈 Key Business Insights

Based on the analysis:

💰 Total revenue generated was approximately ₹123.08M.
🏷️ Electronics was the highest-revenue product category.
🌍 East was the highest-performing region by revenue.
📱 Smartphone generated the highest product revenue.
💳 Card was the highest-revenue payment method.
📅 Monthly revenue remained relatively consistent throughout 2025.
🔄 Project Workflow
Raw Retail Data
       ↓
     MySQL
       ↓
  SQL Analysis
       ↓
   DAX Measures
       ↓
    Power BI
       ↓
Interactive Dashboard
       ↓
 Business Insights
💡 Skills Demonstrated
SQL
MySQL
Power BI
DAX
Data Analysis
Data Visualization
Business Intelligence
Customer Analytics
Retail Analytics
KPI Development
Dashboard Development
Data Storytelling
🚀 Project Highlights

This project demonstrates the complete workflow of a data analytics project:

Data → Database → SQL → Analysis → Power BI → Business Insights

It combines technical SQL skills with interactive business intelligence and dashboard development.

👨‍💻 Author
Naresh Kumar

B.Tech – Artificial Intelligence & Data Science

Interested in Data Analytics, Business Intelligence, SQL, Power BI, and Data Visualization.

⭐ If you find this project useful, consider giving the repository a star!

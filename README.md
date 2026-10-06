# 📊 Retail Sales & Customer Intelligence

A **Retail Sales and Customer Intelligence Analytics Project** that uses **MySQL, SQL, and Power BI** to analyze sales performance, customer behavior, product performance, regional trends, and payment patterns.

The project transforms raw retail transaction data into meaningful **business insights and interactive dashboards** to support data-driven decision-making.

---

## 🚀 Project Overview

**Retail Sales & Customer Intelligence** is an end-to-end data analytics project designed to demonstrate practical skills required for a **Data Analyst / Business Intelligence Analyst** role.

The project combines:

* 🗄️ **MySQL** for data storage and management
* 🔎 **SQL** for data cleaning, transformation, and analysis
* 📊 **Power BI** for interactive dashboards and visualization
* 📈 **DAX** for business metrics and KPIs
* 💡 Business analysis for actionable insights

---

## 🎯 Project Objective

The main objective is to analyze retail transaction data and answer important business questions such as:

* Which products generate the highest revenue?
* Which categories perform best?
* Who are the most valuable customers?
* Which regions generate the most sales?
* What payment methods are most commonly used?
* How do discounts affect revenue?
* What are the overall sales and revenue trends?
* Which customers contribute the most to business revenue?

---

## 🗂️ Dataset

The project uses a retail sales transaction dataset containing **5,000 sales records**.

### Dataset Information

| Attribute      | Description                   |
| -------------- | ----------------------------- |
| Order ID       | Unique transaction identifier |
| Order Date     | Date of purchase              |
| Customer ID    | Customer identifier           |
| Product ID     | Product identifier            |
| Product Name   | Name of the product           |
| Category       | Product category              |
| Region         | Sales region                  |
| Quantity       | Number of units purchased     |
| Unit Price     | Price per unit                |
| Discount       | Discount applied              |
| Payment Method | Method used for payment       |

### Dataset Statistics

* **5,000** sales transactions
* **1,000** unique customers
* **20** unique products
* **3** product categories
* Multiple sales regions
* Multiple payment methods

---

## 🛠️ Technologies Used

| Technology      | Purpose                                   |
| --------------- | ----------------------------------------- |
| 🐬 **MySQL**    | Database management                       |
| 🔎 **SQL**      | Data analysis and transformation          |
| 📊 **Power BI** | Interactive dashboards                    |
| 📐 **DAX**      | KPIs and calculated measures              |
| 📝 **GitHub**   | Version control and project documentation |

---

## 🔄 Data Analytics Workflow

```text
              Raw Retail Data
                     │
                     ▼
              ┌──────────────┐
              │    MySQL     │
              │   Database   │
              └──────┬───────┘
                     │
                     ▼
              ┌──────────────┐
              │     SQL      │
              │   Analysis   │
              └──────┬───────┘
                     │
                     ▼
          ┌─────────────────────┐
          │ Data Transformation │
          └──────────┬──────────┘
                     │
                     ▼
              ┌──────────────┐
              │   Power BI   │
              │   Dashboard  │
              └──────┬───────┘
                     │
                     ▼
             Business Insights
```

---

# 🗄️ MySQL & SQL Analysis

The retail dataset is stored in a **MySQL database** and analyzed using SQL queries.

### Key SQL Analysis

The project performs analysis including:

* Total revenue calculation
* Total sales
* Customer-level revenue
* Product-level performance
* Category performance
* Regional sales analysis
* Payment method analysis
* Discount analysis
* Customer ranking
* Revenue contribution
* Top-performing customers
* Top-performing products

### Revenue Calculation

Revenue is calculated using:

```sql
Quantity × Unit_Price × (1 - Discount)
```

This provides a more realistic revenue measure after accounting for discounts.

---

# 📊 Power BI Dashboard

The processed data is connected to **Power BI** to create interactive business intelligence dashboards.

### Dashboard Areas

#### 💰 Sales Performance

* Total Revenue
* Total Sales
* Total Quantity
* Average Order Value
* Revenue trends

#### 👥 Customer Intelligence

* Customer revenue
* Top customers
* Customer ranking
* Customer contribution
* Purchase behavior

#### 📦 Product Analysis

* Best-selling products
* Product revenue
* Product quantity
* Category performance

#### 🌎 Regional Analysis

* Revenue by region
* Sales by region
* Regional performance comparison

#### 💳 Payment Analysis

* Payment method distribution
* Revenue by payment method
* Transaction trends

---

# 📈 Key KPIs

The Power BI dashboard includes important business KPIs such as:

```text
💰 Total Revenue
🛒 Total Orders
📦 Total Quantity Sold
👥 Total Customers
📦 Total Products
💵 Average Order Value
🏆 Top Customer
⭐ Top Product
```

---

# 📐 DAX Measures

Example DAX measures used for business analysis:

### Total Revenue

```DAX
Total Revenue =
SUMX(
    Sales,
    Sales[Quantity] *
    Sales[Unit_Price] *
    (1 - Sales[Discount])
)
```

### Total Quantity

```DAX
Total Quantity =
SUM(Sales[Quantity])
```

### Average Order Value

```DAX
Average Order Value =
DIVIDE(
    [Total Revenue],
    DISTINCTCOUNT(Sales[Order_ID])
)
```

### Total Customers

```DAX
Total Customers =
DISTINCTCOUNT(Sales[Customer_ID])
```

---

# 💡 Business Insights

The analysis helps identify:

* High-performing products and categories
* High-value customers
* Strong and weak sales regions
* Customer purchasing patterns
* Revenue contribution by category
* Popular payment methods
* Impact of discounts on revenue
* Opportunities for improving sales performance

These insights can help businesses improve **customer targeting, product strategy, regional planning, and revenue optimization**.

---

# 📊 Dashboard Features

The Power BI dashboard provides:

* Interactive filters
* Slicers
* KPI cards
* Bar charts
* Line charts
* Pie/donut charts
* Customer analysis
* Product analysis
* Regional analysis
* Payment analysis
* Interactive business insights

---

# 📁 Project Structure

```text
Retail-Sales-Customer-Intelligence/
│
├── README.md
│
├── dataset/
│   └── sales.csv
│
├── sql/
│   └── retail_analytics.sql
│
├── powerbi/
│   └── Retail_Sales_Customer_Intelligence.pbix
│
└── screenshots/
    ├── dashboard.png
    └── analysis.png
```

> The folder structure can be adjusted according to the files available in the repository.

---

# 🚀 How to Run the Project

## Step 1 — Setup MySQL

Create the database:

```sql
CREATE DATABASE retail_analytics;
```

Select the database:

```sql
USE retail_analytics;
```

Import the retail sales dataset into MySQL.

---

## Step 2 — Perform SQL Analysis

Run SQL queries to analyze:

```text
Sales
Customers
Products
Categories
Regions
Payment Methods
Revenue
Discounts
```

---

## Step 3 — Connect MySQL to Power BI

Open **Power BI Desktop**.

Navigate to:

```text
Home → Get Data → MySQL Database
```

Enter your MySQL server details and select:

```text
retail_analytics
```

Load the required tables into Power BI.

---

## Step 4 — Build Dashboard

Create:

* Data relationships
* Calculated measures
* KPI cards
* Charts
* Slicers
* Interactive filters

Then publish or share the completed Power BI dashboard.

---

# 🎯 Skills Demonstrated

This project demonstrates practical skills in:

* SQL
* MySQL
* Power BI
* DAX
* Data Cleaning
* Data Transformation
* Data Visualization
* Business Intelligence
* Customer Analytics
* Sales Analytics
* KPI Development
* Business Analysis
* Data-driven Decision Making

---

# 🌟 Why This Project?

This project demonstrates an **end-to-end Data Analyst workflow**:

```text
Raw Data
   ↓
Database
   ↓
SQL Analysis
   ↓
Data Transformation
   ↓
Power BI
   ↓
Dashboard
   ↓
Business Insights
```

It showcases the ability to transform raw transactional data into useful information for business decision-making.

---

# 🔮 Future Enhancements

Possible improvements include:

* 🤖 Customer segmentation using Machine Learning
* 📈 Sales forecasting
* 🧠 Customer churn prediction
* 🎯 RFM customer analysis
* 💰 Customer Lifetime Value prediction
* 📊 Advanced Power BI dashboard
* ☁️ Cloud database integration
* 🔄 Automated data refresh
* 📱 Mobile-friendly dashboard
* 🔔 Automated business alerts

---

# 👨‍💻 Author

**P. Naresh Kumar**

B.Tech – Artificial Intelligence & Data Science

Aspiring **Data Analyst | Business Intelligence Analyst**

---

## 🔗 Project Repository

**GitHub:**
https://github.com/nareshkumarpunganoor-crypto/Retail-Sales-Customer-Intelligence

---

## ⭐ If You Like This Project

If this project helped you understand **SQL, MySQL, Power BI, and retail analytics**, consider giving the repository a ⭐.

---

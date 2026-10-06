-- ============================================
-- Retail Sales & Customer Intelligence
-- SQL Analysis Queries
-- ============================================

USE retail_analytics;


-- 1. Total Revenue
SELECT
    SUM(Quantity * Unit_Price * (1 - Discount)) AS Total_Revenue
FROM sales;


-- 2. Total Orders
SELECT
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales;


-- 3. Total Customers
SELECT
    COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM sales;


-- 4. Total Quantity Sold
SELECT
    SUM(Quantity) AS Total_Quantity
FROM sales;


-- 5. Average Order Value
SELECT
    SUM(Quantity * Unit_Price * (1 - Discount))
    / COUNT(DISTINCT Order_ID) AS Average_Order_Value
FROM sales;


-- 6. Monthly Revenue
SELECT
    MONTH(Order_Date) AS Month_Number,
    MONTHNAME(Order_Date) AS Month_Name,
    SUM(Quantity * Unit_Price * (1 - Discount)) AS Revenue
FROM sales
GROUP BY
    MONTH(Order_Date),
    MONTHNAME(Order_Date)
ORDER BY Month_Number;


-- 7. Revenue by Category
SELECT
    Category,
    COUNT(DISTINCT Order_ID) AS Orders,
    SUM(Quantity) AS Quantity,
    SUM(Quantity * Unit_Price * (1 - Discount)) AS Revenue
FROM sales
GROUP BY Category
ORDER BY Revenue DESC;


-- 8. Revenue by Region
SELECT
    Region,
    COUNT(DISTINCT Order_ID) AS Orders,
    COUNT(DISTINCT Customer_ID) AS Customers,
    SUM(Quantity * Unit_Price * (1 - Discount)) AS Revenue
FROM sales
GROUP BY Region
ORDER BY Revenue DESC;


-- 9. Top Products by Revenue
SELECT
    Product_Name,
    SUM(Quantity) AS Quantity_Sold,
    SUM(Quantity * Unit_Price * (1 - Discount)) AS Revenue
FROM sales
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;


-- 10. Products by Quantity Sold
SELECT
    Product_Name,
    SUM(Quantity) AS Quantity_Sold,
    SUM(Quantity * Unit_Price * (1 - Discount)) AS Revenue
FROM sales
GROUP BY Product_Name
ORDER BY Quantity_Sold DESC;


-- 11. Revenue by Payment Method
SELECT
    Payment_Method,
    SUM(Quantity * Unit_Price * (1 - Discount)) AS Revenue
FROM sales
GROUP BY Payment_Method
ORDER BY Revenue DESC;


-- 12. Top Customers by Revenue
SELECT
    Customer_ID,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Quantity) AS Total_Quantity,
    SUM(Quantity * Unit_Price * (1 - Discount)) AS Revenue
FROM sales
GROUP BY Customer_ID
ORDER BY Revenue DESC
LIMIT 10;


-- 13. Customer Ranking
SELECT
    Customer_ID,
    SUM(Quantity * Unit_Price * (1 - Discount)) AS Revenue,
    RANK() OVER (
        ORDER BY SUM(Quantity * Unit_Price * (1 - Discount)) DESC
    ) AS Revenue_Rank
FROM sales
GROUP BY Customer_ID
ORDER BY Revenue_Rank;


-- 14. Monthly Revenue with Previous Month Comparison
WITH MonthlyRevenue AS (
    SELECT
        YEAR(Order_Date) AS Year_Number,
        MONTH(Order_Date) AS Month_Number,
        MONTHNAME(Order_Date) AS Month_Name,
        SUM(Quantity * Unit_Price * (1 - Discount)) AS Revenue
    FROM sales
    GROUP BY
        YEAR(Order_Date),
        MONTH(Order_Date),
        MONTHNAME(Order_Date)
)
SELECT
    Month_Name,
    Revenue,
    LAG(Revenue) OVER (
        ORDER BY Year_Number, Month_Number
    ) AS Previous_Month_Revenue,
    Revenue -
    LAG(Revenue) OVER (
        ORDER BY Year_Number, Month_Number
    ) AS Revenue_Change
FROM MonthlyRevenue
ORDER BY Year_Number, Month_Number;


-- 15. Category and Region Analysis
SELECT
    Category,
    Region,
    SUM(Quantity * Unit_Price * (1 - Discount)) AS Revenue
FROM sales
GROUP BY Category, Region
ORDER BY Revenue DESC;
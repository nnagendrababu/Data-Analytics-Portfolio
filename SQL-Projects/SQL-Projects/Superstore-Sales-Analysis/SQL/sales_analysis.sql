-- Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders;

-- Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM Orders;

-- Top 10 Products
SELECT Product_Name,
       SUM(Sales) AS Revenue
FROM Orders
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;

-- Sales by Region
SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top Customers
SELECT Customer_Name,
       SUM(Sales) AS Revenue
FROM Orders
GROUP BY Customer_Name
ORDER BY Revenue DESC
LIMIT 10;

SELECT * FROM shopping_trends;
SELECT COUNT(*) AS Total_Customers
FROM shopping_trends;
SELECT * FROM shopping_trends LIMIT 5;
SELECT `Customer ID`,Age FROM shopping_trends LIMIT 5;

#Total Customer
SELECT COUNT(*) AS Total_Customers FROM shopping_trends;

#Male vs Female Customers
SELECT Gender, COUNT(*) AS Total FROM shopping_trends GROUP BY Gender;

#Average Age
SELECT AVG(Age) AS Average_Age FROM shopping_trends;

# Total Sales
SELECT SUM(`Purchase Amount (USD)`) AS Total_Sales FROM shopping_trends;

#Average Purchase Amount
SELECT AVG(`Purchase Amount (USD)`) AS Average_Purchase FROM shopping_trends;

#Most Purchased Category
SELECT Category, COUNT(*) AS Total_Purchases FROM shopping_trends GROUP BY Category ORDER BY Total_Purchases DESC;

#Sales by Category
SELECT Category, SUM(`Purchase Amount (USD)`) AS Total_Sales FROM shopping_trends GROUP BY Category ORDER BY Total_Sales DESC;

#Customers by Season
SELECT Season, COUNT(*) AS Total_Customers FROM shopping_trends GROUP BY Season;

# Payment Method Used
SELECT `Payment Method`,COUNT(*) AS Total FROM shopping_trends GROUP BY `Payment Method`;

#Top 10 Highest Purchases
SELECT `Customer ID`, `Purchase Amount (USD)` FROM shopping_trends ORDER BY `Purchase Amount (USD)` DESC LIMIT 10;

#Lowest Purchase Amount
SELECT
    MIN(`Purchase Amount (USD)`) AS Lowest_Purchase
FROM
    shopping_trends;
    
#Top 10 Most Purchased Items
SELECT
    `Item Purchased`,
    COUNT(*) AS Total_Orders
FROM
    shopping_trends
GROUP BY
    `Item Purchased`
ORDER BY
    Total_Orders DESC
LIMIT 10;
    
#Revenue by Location
SELECT
    Location,
    SUM(`Purchase Amount (USD)`) AS Revenue
FROM
    shopping_trends
GROUP BY
    Location
ORDER BY
    Revenue DESC;
    
 #Most Preferred Size
SELECT
    Size,
    COUNT(*) AS Total_Customers
FROM
    shopping_trends
GROUP BY
    Size
ORDER BY
    Total_Customers DESC;
    
# Most Preferred Color
SELECT
    Color,
    COUNT(*) AS Total_Customers
FROM
    shopping_trends
GROUP BY
    Color
ORDER BY
    Total_Customers DESC;
    
#Revenue by Age Group
SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+'
    END AS Age_Group,
    SUM(`Purchase Amount (USD)`) AS Total_Revenue
FROM
    shopping_trends
GROUP BY
    Age_Group
ORDER BY
    Total_Revenue DESC;
    
#High Revenue Categories
SELECT
    Category,
    SUM(`Purchase Amount (USD)`) AS Revenue
FROM
    shopping_trends
GROUP BY
    Category
HAVING
    Revenue > 20000
ORDER BY
    Revenue DESC;
    
# Locations with More Than 100 Customers
SELECT
    Location,
    COUNT(*) AS Total_Customers
FROM
    shopping_trends
GROUP BY
    Location
HAVING
    Total_Customers > 100
ORDER BY
    Total_Customers DESC;
    
# Customer Spending Level
SELECT
    CASE
        WHEN `Purchase Amount (USD)` < 30 THEN 'Low Spender'
        WHEN `Purchase Amount (USD)` BETWEEN 30 AND 70 THEN 'Medium Spender'
        ELSE 'High Spender'
    END AS Spending_Level,
    COUNT(*) AS Total_Customers
FROM
    shopping_trends
GROUP BY
    Spending_Level
ORDER BY
    Total_Customers DESC;
    
# Average Purchase Amount by Gender
SELECT
    Gender,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase
FROM
    shopping_trends
GROUP BY
    Gender
ORDER BY
    Average_Purchase DESC;
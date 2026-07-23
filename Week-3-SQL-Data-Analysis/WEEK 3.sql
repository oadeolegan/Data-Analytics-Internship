CREATE DATABASE project3_sql_analysis_DB;


-- ============================================================
-- QUERY 1: Basic Extraction (View Top 10 Recent Orders)
-- ============================================================
SELECT TOP 10 *
FROM ['Sheet1 (2)$']
ORDER BY Date DESC;


-- ============================================================
-- QUERY 2: Filtering Data with WHERE (Delivered Orders Only)
-- ============================================================
SELECT OrderID, Date, Product, TotalPrice, OrderStatus
FROM ['Sheet1 (2)$']
WHERE OrderStatus = 'Delivered'
ORDER BY TotalPrice DESC;


-- ============================================================
-- QUERY 3: Summary Aggregations (COUNT, SUM, AVG)
-- ============================================================
SELECT 
    COUNT(OrderID) AS TotalOrders,
    SUM(TotalPrice) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AverageOrderValue,
    ROUND(AVG(UnitPrice), 2) AS AverageUnitPrice,
    ROUND(AVG(Quantity), 2) AS AverageQuantity
FROM ['Sheet1 (2)$'];


-- ============================================================
-- QUERY 4: Grouping & Product Performance (GROUP BY Product)
-- ============================================================
SELECT 
    Product,
    COUNT(OrderID) AS TotalOrders,
    SUM(TotalPrice) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AverageTotalPrice
FROM ['Sheet1 (2)$']
GROUP BY Product
ORDER BY TotalRevenue DESC;


-- ============================================================
-- QUERY 5: Fulfillment Breakdown (GROUP BY OrderStatus)
-- ============================================================
SELECT 
    OrderStatus,
    COUNT(OrderID) AS OrderCount,
    SUM(TotalPrice) AS TotalValue,
    ROUND(AVG(TotalPrice), 2) AS AvgValue
FROM ['Sheet1 (2)$']
GROUP BY OrderStatus
ORDER BY OrderCount DESC;
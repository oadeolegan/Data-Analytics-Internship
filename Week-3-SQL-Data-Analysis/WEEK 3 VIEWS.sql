-- 1. View for Overall Transaction Summary
CREATE VIEW vw_Overall_Summary AS
SELECT 
    COUNT(OrderID) AS TotalOrders,
    SUM(TotalPrice) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AverageOrderValue,
    ROUND(AVG(UnitPrice), 2) AS AverageUnitPrice,
    ROUND(AVG(Quantity), 2) AS AverageQuantity
FROM ['Sheet1 (2)$'];
GO

-- 2. View for Product Category Performance
CREATE VIEW vw_Product_Performance AS
SELECT 
    Product,
    COUNT(OrderID) AS TotalOrders,
    SUM(TotalPrice) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AverageTotalPrice
FROM ['Sheet1 (2)$']
GROUP BY Product;
GO

-- 3. View for Order Status Fulfillment
CREATE VIEW vw_OrderStatus_Breakdown AS
SELECT 
    OrderStatus,
    COUNT(OrderID) AS OrderCount,
    SUM(TotalPrice) AS TotalValue,
    ROUND(AVG(TotalPrice), 2) AS AvgValue
FROM ['Sheet1 (2)$']
GROUP BY OrderStatus;


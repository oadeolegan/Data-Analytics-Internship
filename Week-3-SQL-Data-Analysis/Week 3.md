# Week 3: SQL Data Analysis

## 📌 Overview

This repository contains the SQL analysis conducted for Week 3 of the Data Analytics Internship. The primary goal of this milestone is to extract structured business intelligence, filter records, compute summary statistics, and evaluate order fulfillment patterns from an e-commerce transactional database (1,200 records).

\---

## 🛠️ Concepts \& Technologies Applied

* **Database Management System:** Microsoft SQL Server (SSMS)
* **SQL Query Operations:** `SELECT`, `WHERE`, `ORDER BY`, `TOP`
* **Aggregation Functions:** `COUNT()`, `SUM()`, `AVG()`, `ROUND()`
* **Categorical Grouping:** `GROUP BY` across `Product` and `OrderStatus`
* **Database Abstraction:** Built custom SQL **Views** (`CREATE VIEW`) to optimize data retrieval for downstream reporting and dashboard integration.

\---

## 📁 Files Included

* `project3\_sql\_analysis.sql` - Complete SQL script featuring data extraction, aggregation queries, and view creation logic.
* `README.md` - Technical summary and key analytical findings.

\---

## 📊 Key Insights Extracted

### 1\. Overall Portfolio Metrics

* **Total Transactions:** 1,200 orders
* **Total Gross Revenue:** $1,264,761.96
* **Average Order Value (AOV):** $1,053.97
* **Average Unit Price:** $356.41

### 2\. Product Category Performance

* **Top Revenue Contributor:** Chairs ($195,620.11 across 178 orders)
* **Highest Average Order Value:** Laptops ($1,110.56)
* **Lowest Average Order Value:** Phones ($972.58)

### 3\. Order Fulfillment Breakdown

Order distribution across fulfillment stages is relatively balanced:

* **Cancelled:** 250 orders (\~20.8%)
* **Returned:** 247 orders (\~20.6%)
* **Pending:** 237 orders (\~19.8%)
* **Shipped:** 235 orders (\~19.6%)
* **Delivered:** 231 orders (\~19.2%)

> 💡 \*\*Operational Highlight:\*\* Combined \*\*Cancelled \& Returned\*\* orders represent \*\*41.4%\*\* of total transaction volume, highlighting an operational priority for inventory and customer retention strategies.

\---

## 🏗️ Database Views Created

To streamline querying and prepare for dashboard integration in Week 4, the following views were compiled:

1. `vw\_Overall\_Summary` - Computes core KPI metrics.
2. `vw\_Product\_Performance` - Aggregates total orders, revenue, and mean order values per product category.
3. `vw\_OrderStatus\_Breakdown` - Evaluates transaction counts and volume across order fulfillment states.

\---

*Submitted as part of the Data Analytics Internship Milestone.*


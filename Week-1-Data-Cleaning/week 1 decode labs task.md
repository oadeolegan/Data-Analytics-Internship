# Week 1: Data Cleaning \& Preprocessing

## 📌 Overview

This repository contains the cleaned and preprocessed e-commerce orders dataset (1,200 records) for the Data Analytics Internship.

## 🛠️ Data Cleaning Steps Applied

1. **Chronological Sorting:**

   * Re-ordered the dataset chronologically by `Date` (2023-01-01 to 2025-06-30) to facilitate time-series analysis and accurate monthly reporting.
2. **Completeness \& Missing Value Handling:**

   * Verified data completeness across 1,200 order entries.
   * Documented 309 null values in `CouponCode`, representing transactions where no promotional discount was redeemed.
3. **Calculated Field Validation:**

   * Validated that `TotalPrice` strictly equals `Quantity \* UnitPrice` across all rows.
4. **Data Type Standardization:**

   * Converted dates to standard date format (`YYYY-MM-DD`).
   * Ensured numerical fields (`UnitPrice`, `TotalPrice`) maintain standard currency precision.

\---

## 📁 Files Included

* `Dataset for Data Analytics.xlsx` - Raw input dataset.
* `Book.xlsx` - Cleaned, sorted, and validated dataset used for analysis.


# Amazon Sales & Quality Analytics (SQL)
## 📌 Project Overview
This project focuses on analyzing Amazon product data to uncover business insights regarding pricing strategies, customer satisfaction, and data integrity. Using SQL, I performed data profiling to identify "bad data" and developed key performance indicators (KPIs) to evaluate the value-for-money ratio across different product categories.

## 🛠 Tech Stack
Language: SQL (PostgreSQL / MySQL / Standard SQL)

### Tool: DBeaver / MySQL Workbench / BigQuery

### Key Concepts: Data Cleaning, Aggregations, Window Functions, KPI Design.

## 🔍 Phase 1: Data Quality Audit (Identifying "Bad Data")
Before the analysis, I performed a data quality check to ensure the reliability of the results.

Handling Missing Values: Identified records with missing prices or ratings using IS NULL.

Data Consistency: Checked for duplicate products using GROUP BY and HAVING COUNT(*) > 1.

Logic Checks: Filtered out "impossible" data, such as negative prices or ratings outside the 0–5 range.

### SQL

-- Example: Finding incomplete product records
SELECT * FROM amazon_products
WHERE product_name IS NULL OR price IS NULL;
## 📊 Phase 2: Business Logic & KPIs
To move beyond simple statistics, I implemented advanced metrics to evaluate product performance:

1. Value-for-Money Index (Price per Rating)
This KPI measures how much a customer pays for "one unit of quality."

### Formula: Price / Rating

### Insight: A lower value indicates a "Value Champion" (high quality for a low price), while a high value indicates a premium/luxury positioning.

2. Popularity Score
Identified market leaders by combining the average rating with the volume of reviews.

Formula: Rating * Rating_Count

3. Category Rankings
Used Window Functions to identify the Top 3 best-rated products within each category to understand which segments perform best.

## 💡 Key Insights
Discount Correlation: Products with discounts over 50% do not necessarily have lower ratings, suggesting that aggressive pricing is a volume strategy, not a clearance of "bad" stock.

Category Leaders: The "Electronics" category shows the highest "Price per Rating" variance, indicating a wide gap between budget accessories and premium brands.

Data Integrity: Found that ~2% of the dataset contained placeholder descriptions, which were excluded from the final analysis.

## 🚀 How to use this Repository
Dataset: The raw data is located in /Datasets.

Queries: Run the scripts in /sql_queries in the following order:

01_DATA_cleaning.sql

02_Window_Function_top_products.sql

03_Price_per_Quality.sql

# decodelabs_sql_analysis_project
## Project overview
This project focuses on using SQL to analyze an e-commerce transaction dataset and extract meaningful business insights. The objective was to demonstrate the use of fundamental SQL concepts such as SELECT, WHERE, ORDER BY, GROUP BY, and aggregate functions to answer business questions and support decision-making.
The analysis was performed using MySQL Workbench.

## Dataset Description
The dataset contains 1,200 e-commerce transaction records and includes information on:
- OrderID
- Date
- CustomerID
- Product
- Quantity
- UnitPrice
- PaymentMethod
- OrderStatus
- CouponCode
- ReferralSource
- TotalPrice

## Analysis Objective
The analysis aimed to answer the following business questions:

- How many transactions were recorded?
- Which products generated the most revenue?
- Which products were purchased most frequently?
- Which payment methods were preferred by customers?
- Which coupon campaigns performed best?
- Which referral channels generated the highest revenue?
- How were transactions distributed across order statuses?

## SQL Concepts Demonstrate
The following SQL concepts were applied during the analysis:

-SELECT
-WHERE
-ORDER BY
-GROUP BY
-COUNT()
-SUM()
-AVG()
- Aggregate Functions
- Data Filtering
- Data Sorting

---

## Business Questions Answered

### 1. View Sample Records

```sql
SELECT * 
FROM sales_data
LIMIT 10;
```

### 2. How many orders were recorded?

```sql
SELECT COUNT(*) AS total_orders
FROM sales_data;
```

### 3. What quantity of products was sold?

```sql
SELECT SUM(Quantity) AS TotalQuantitySold
FROM sales_data;
```

### 4. What is the average quantity purchased per order?

```sql
SELECT AVG(Quantity) AS AverageQuantityPerOrder
FROM sales_data;
```

### 5. Which transactions involved more than three items?

```sql
SELECT *
FROM sales_data
WHERE Quantity > 3
LIMIT 15;
```

### 6. Which products received the highest number of orders?

```sql
SELECT Product,
       COUNT(*) AS NumberOfOrders
FROM sales_data
GROUP BY Product
ORDER BY NumberOfOrders DESC;
```

### 7. Which products generated the highest revenue?

```sql
SELECT Product,
       SUM(CAST(REPLACE(REPLACE(TotalPrice,'$',''),',','') AS DECIMAL(10,2))) AS TotalRevenue
FROM sales_data
GROUP BY Product
ORDER BY TotalRevenue DESC;
```

### 8. Which products generated the highest average revenue per order?

```sql
SELECT Product,
       ROUND(
           SUM(CAST(REPLACE(REPLACE(TotalPrice,'$',''),',','') AS DECIMAL(10,2))) / COUNT(*),
           2
       ) AS AvgRevenuePerOrder
FROM sales_data
GROUP BY Product
ORDER BY AvgRevenuePerOrder DESC;
```

## Analysis Output








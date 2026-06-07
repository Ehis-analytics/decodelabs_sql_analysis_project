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

### 1. How many orders were recorded?

```sql
SELECT COUNT(*) AS Total_Orders
FROM sales_data;
```

### 2. Which products generated the highest revenue?

```sql
SELECT Product,
       SUM(TotalPrice) AS Total_Revenue
FROM sales_data
GROUP BY Product
ORDER BY Total_Revenue DESC;
```

### 3. Which products received the highest number of orders?

```sql
SELECT Product,
       COUNT(OrderID) AS Total_Orders
FROM sales_data
GROUP BY Product
ORDER BY Total_Orders DESC;
```

### 4. Which payment methods were used most frequently?

```sql
SELECT PaymentMethod,
       COUNT(*) AS Total_Transactions
FROM sales_data
GROUP BY PaymentMethod
ORDER BY Total_Transactions DESC;
```

### 5. Which coupon codes generated the highest revenue?

```sql
SELECT CouponCode,
       SUM(TotalPrice) AS Revenue
FROM sales_data
GROUP BY CouponCode
ORDER BY Revenue DESC;
```

### 6. Which referral sources generated the most revenue?

```sql
SELECT ReferralSource,
       SUM(TotalPrice) AS Revenue
FROM sales_data
GROUP BY ReferralSource
ORDER BY Revenue DESC;
```

### 7. What was the average transaction value by payment method?

```sql
SELECT PaymentMethod,
       AVG(TotalPrice) AS Average_Transaction_Value
FROM sales_data
GROUP BY PaymentMethod
ORDER BY Average_Transaction_Value DESC;
```

### 8. How were orders distributed across different order statuses?

```sql
SELECT OrderStatus,
       COUNT(*) AS Total_Orders
FROM sales_data
GROUP BY OrderStatus
ORDER BY Total_Orders DESC;
```

## Key Findings

- The dataset contained **1,200 customer transactions**.

- **Chairs generated the highest total revenue**, making them the most valuable product category.

- **Printers recorded the highest number of orders**, indicating strong customer demand.

- **Online Payment was the most frequently used payment method**.

- The **FREESHIP coupon code generated the highest revenue contribution**.

- **Instagram produced the highest referral revenue**, making it the strongest customer acquisition channel.

- **Cancelled orders recorded the highest transaction count** among all order statuses.

---

## Analysis Output








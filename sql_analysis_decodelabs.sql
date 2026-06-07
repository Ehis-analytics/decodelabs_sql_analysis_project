SELECT * FROM sales_data Limit 10;
SELECT COUNT(*) FROM sales_data;
SELECT sum(Quantity) as TotalQuantitySold FROM sales_data;
select avg(Quantity) as AverageQuantityPerOrder from sales_data;
select * from sales_data where Quantity > 3 Limit 15;
select product, count(*) as NumberOforders from sales_data group by Product order by NumberOfOrders Desc;
SELECT Product,SUM(CAST(REPLACE(REPLACE(TotalPrice,'$',''),',','') AS DECIMAL(10,2))) AS TotalRevenue FROM sales_data GROUP BY Product ORDER BY TotalRevenue DESC;
select Product, round(sum(cast(replace(replace(TotalPrice,'$',''),'$','') as decimal(10,2))) /count(*), 2 ) AS AvgRevenuePerOrder from sales_data group by Product ORDER BY AvgRevenuePerOrder DESC;
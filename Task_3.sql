---Create table Sales

CREATE TABLE Sales (

  OrderID INT PRIMARY KEY,

  CustomerName VARCHAR(50),

  Product VARCHAR(50),

  Category VARCHAR(50),

  Quantity INT,

  PricePerUnit DECIMAL(10, 2),

  OrderDate DATE

);


--Insert data into Sales table

INSERT INTO Sales (OrderID, CustomerName, Product, Category, Quantity, PricePerUnit, OrderDate) VALUES

(101, 'Alice', 'Laptop', 'Electronics', 1, 60000.00, '2024-05-01'),

(102, 'Bob', 'Smartphone', 'Electronics', 2, 20000.00, '2024-05-01'),

(103, 'Alice', 'Headphones', 'Accessories', 3, 3000.00, '2024-05-02'),

(104, 'Charlie', 'Laptop', 'Electronics', 1, 55000.00, '2024-05-02'),

(105, 'Bob', 'Laptop Bag', 'Accessories', 2, 1500.00, '2024-05-03'),

(106, 'Alice', 'Tablet', 'Electronics', 1, 25000.00, '2024-05-04'),

(107, 'Charlie', 'Smartphone', 'Electronics', 1, 21000.00, '2024-05-05'),

(108, 'Bob', 'Power Bank', 'Accessories', 1, 2000.00, '2024-05-05');

--Retrieve all records
select * from sales;

--Total Quantity Sold To Each Customer
select CustomerName, Sum(Quantity) as TotalQuantitySold from sales group by CustomerName;

--Total Sales Amount by Customer (Quantity * PricePerUnit)
select CustomerName, Sum(Quantity * PricePerUnit) as TotalSales from sales group by CustomerName;

--Average Sales amount per Product Category
select Category, Avg(Quantity * PricePerUnit) AS AverageSales from sales group by Category;

--Customers with Total Sales Greater Than ₹50,000
select CustomerName, Sum(Quantity * PricePerUnit) as TotalSales from sales GROUP BY CustomerName having Sum(Quantity * PricePerUnit) > 50000;

--Most Frequently Ordered Product by Quantity
select top(1) Product, SUM(Quantity) as SellingCount from sales group by Product order by SUM(Quantity) desc;

--Show the Total Number of Orders per Product using count
select Product, count(*) as TotalOrders from sales group by Product;

--Highest and Lowest Price Per Unit for Each Category
select Category, Max(PricePerUnit) as MaxPrice, Min(PricePerUnit) as MinPrice from sales group by Category;

--Daily Sales Summary(For each day, display the total sales amount.)
select OrderDate as Day, SUM(Quantity * PricePerUnit)  from Sales group by OrderDate;
-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName 
FROM product as p
JOIN category as c
ON c.Id = p.CategoryId;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.id, s.CompanyName 
FROM "Order" as o
JOIN Shipper as s
ON s.Id = o.ShipVia
WHERE o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.ProductName, o.Quantity 
FROM "OrderDetail" as o
JOIN product as p
ON o.productId = p.ID
WHERE o.orderid = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.id as OrderID, c.companyName as 'Customer Company Name', e.lastName as 'Employee Last Name' 
FROM "Order" as o
JOIN customer as c
ON o.customerId = c.ID
JOIN Employee as e
ON o.employeeId = e.id;

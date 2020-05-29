-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT product.ProductName, category.CategoryName
FROM Product
JOIN Category
ON product.CategoryId = category.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [order].Id, [order].ShipName 
FROM [Order]
WHERE [order].OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT product.ProductName, orderdetail.Quantity
FROM OrderDetaiL
JOIN Product
ON product.id = orderdetail.ProductId
WHERE orderdetail.OrderId = 10251
ORDER BY product.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT [order].id 
AS OrderId, customer.CompanyName, employee.LastName
FROM [Order]
JOIN Customer
ON [order].CustomerId = customer.id
JOIN Employee
ON [order].EmployeeId = employee.id
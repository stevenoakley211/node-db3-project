-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

    SELECT ProductName, CategoryName
    FROM product AS P
    JOIN Category AS C
    ON P.CategoryId = C.id; 
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    SELECT [order].id, companyName
    FROM [order] AS O
    JOIN Shipper AS S
    ON O.shipvia =S.id
    WHERE O.orderdate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

    SELECT ProductName , Quantity 
    FROM Product AS P 
    JOIN OrderDetail AS O 
    ON P.Id  = O.ProductId
    WHERE O.OrderId = 10251
    ORDER BY P.ProductName DESC
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.


    SELECT Id, CompanyName, LastName 
    FROM [Order] AS O
    JOIN Employee AS E,
         Customer AS C
    WHERE O.CustomerId = C.Id AND O.EmployeeId = E.Id
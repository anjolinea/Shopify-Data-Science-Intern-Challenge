-- Question 1:

SELECT COUNT(*) FROM Orders WHERE ShipperID IN 
   (SELECT ShipperID FROM Shippers WHERE Shippername = "Speedy Express")

-- Answer: 54

-- Question 2:

WITH Temp(LastName, NumberOfOrders) as
  (SELECT Employees.LastName, COUNT(*) AS NumberOfOrders FROM Orders
  LEFT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
  GROUP BY Employees.LastName)
    SELECT LastName -- Note: Replace LastName with * to get the total orders as well
    FROM Temp WHERE NumberOfOrders IN 
    ( SELECT MAX(NumberOfOrders)
      FROM Temp
    )

-- Answer: Peacock (with 40 orders)


-- Question 3:

WITH Temp(ProductName, TotalQuantity) AS 
  (SELECT Products.ProductName, SUM(OrderDetails.Quantity)
  FROM Orders
  LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
  LEFT JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
  LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID 
  WHERE Customers.Country == "Germany"
  GROUP BY Products.ProductName)
  	SELECT ProductName  -- Note: Replace ProductName with * to get the total quantity as well
    FROM Temp WHERE TotalQuantity IN 
    ( SELECT MAX(TotalQuantity)
      FROM Temp
    )

-- Answer: Boston Crab Meat (with 160 orders)
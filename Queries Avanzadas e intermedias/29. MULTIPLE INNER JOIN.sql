---solucion---

SELECT Employees.EmployeeID,LastName, Orders.OrderID,
   ProductName,Quantity
      FROM Employees
        INNER JOIN Orders on
		  Orders.EmployeeID =  Employees.EmployeeID
			INNER JOIN OrderDetails on
			  OrderDetails.OrderID = Orders.OrderID
			    INNER JOIN Products on
			      OrderDetails.ProductID = Products.ProductID
				    Order by OrderID , Products.ProductID ASC

---@rikardoroa
   
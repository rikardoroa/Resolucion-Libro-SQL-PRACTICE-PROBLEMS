SELECT OrderID, CAST(OrderDate as Date), CompanyName 
  FROM Orders
    INNER JOIN Shippers ON
		Orders.ShipVia= Shippers.ShipperID
		  WHERE OrderID <10300
		   ORDER BY OrderID
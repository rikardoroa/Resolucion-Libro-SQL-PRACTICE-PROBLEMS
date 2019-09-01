SELECT Customers.CustomerID AS Customers_ID, Orders.CustomerID AS Orders_CustomerID
      FROM Customers
        LEFT JOIN Orders on
		  Orders.CustomerID = Customers.CustomerID
			WHERE Orders.CustomerID IS NULL

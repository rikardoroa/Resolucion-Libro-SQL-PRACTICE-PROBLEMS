SELECT OrderID, ProductID, 
    UnitPrice,Quantity,
	 (UnitPrice * Quantity) AS TOTALPRICE
       FROM [Order Details]
	    ORDER BY OrderID,ProductID ASC
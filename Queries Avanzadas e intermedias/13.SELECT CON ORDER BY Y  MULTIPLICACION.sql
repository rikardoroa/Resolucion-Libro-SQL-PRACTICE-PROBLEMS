
---solucion----

SELECT OrderID, ProductID, 
    UnitPrice,Quantity,
	 (UnitPrice * Quantity) AS TOTALPRICE
       FROM OrderDetails
	    ORDER BY OrderID,ProductID ASC

---@rikardoroa
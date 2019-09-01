---solucion--
SELECT * FROM(
(SELECT Customers.CustomerID AS Customers_ID
      FROM Customers) AS P
          LEFT JOIN  
		   (Select Orders.CustomerID from Orders
            where Orders.EmployeeID=4) as R
			 on R.CustomerID = P.Customers_ID
			  )
			   WHERE R.CustomerID  IS NULL
			   ORDER BY R.CustomerID DESC


---@rikardoroa
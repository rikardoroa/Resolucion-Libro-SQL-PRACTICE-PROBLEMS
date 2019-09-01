SELECT SupplierID,ContactName,ContactTitle 
    FROM Suppliers
	  WHERE ContactTitle !='Marketing Manager'

	  SELECT SupplierID,ContactName,ContactTitle 
        FROM Suppliers
	      WHERE ContactTitle NOT LIKE 'Marketing Manager'
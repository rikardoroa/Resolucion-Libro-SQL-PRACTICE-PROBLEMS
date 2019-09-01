---solucion 1-----
SELECT SupplierID,ContactName,ContactTitle 
    FROM Suppliers
	  WHERE ContactTitle !='Marketing Manager'


---solucion 2---
SELECT SupplierID,ContactName,ContactTitle 
  FROM Suppliers
	 WHERE ContactTitle NOT LIKE 'Marketing Manager'

---@rikardoroa
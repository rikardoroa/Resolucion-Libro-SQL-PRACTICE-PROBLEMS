---solucion---

SELECT  ProductID, ProductName, 
UnitsInStock,ReorderLevel
FROM Products
     where UnitsInStock < ReorderLevel
     order by ProductID

--@rikardoroa
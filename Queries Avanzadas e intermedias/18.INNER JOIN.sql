--solucion---
SELECT PRODUCTID, PRODUCTNAME, COMPANYNAME 
    FROM PRODUCTS
	   INNER JOIN SUPPLIERS ON
	    Products.SupplierID= Suppliers.SupplierID

--@rikardoroa
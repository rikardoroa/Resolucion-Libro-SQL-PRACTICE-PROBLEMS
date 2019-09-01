--solucion 1---
SELECT CustomerId, CompanyName, Region
     FROM CUSTOMERS
       ORDER BY 
	     CASE WHEN REGION IS NULL THEN 1 ELSE 0 END, 
	       Region ASC

--solucion 2---
SELECT CustomerId, CompanyName, Coalesce(region,'No Region') as Region
     FROM CUSTOMERS
       ORDER BY 
	     CASE WHEN REGION IS NULL THEN 1 ELSE 0 END, 
	       Region ASC

--@rikardoroa

			
		

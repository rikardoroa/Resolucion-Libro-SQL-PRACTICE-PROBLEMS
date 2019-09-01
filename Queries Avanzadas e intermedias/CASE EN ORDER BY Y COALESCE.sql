SELECT CustomerId, CompanyName, Coalesce(region,'No Region') as Region
     FROM CUSTOMERS
       ORDER BY 
	     CASE WHEN REGION IS NULL THEN 1 ELSE 0 END, 
	       Region ASC

			
		
SELECT CustomerId, CompanyName, Region
     FROM CUSTOMERS
       ORDER BY 
	     CASE WHEN REGION IS NULL THEN 1 ELSE 0 END, 
	       Region ASC

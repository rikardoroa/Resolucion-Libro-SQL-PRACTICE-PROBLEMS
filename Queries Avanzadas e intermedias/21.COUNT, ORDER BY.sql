--inicio de problemas intermedios--
--solucion--

SELECT  City, Country,Count (City) as TotalforCity
     FROM Customers
       Group by City, Country
	     order by [TotalforCity] desc

--@rikardoroa
	




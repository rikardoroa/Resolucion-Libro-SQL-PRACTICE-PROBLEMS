SELECT top(3) avg(FREIGHT) AS FREIGHT, ShipCountry
   FROM Orders
      where OrderDate >= '01-01-2015' and OrderDate < '01-01-2016'
       GROUP BY ShipCountry 
	     order by [FREIGHT] desc
       

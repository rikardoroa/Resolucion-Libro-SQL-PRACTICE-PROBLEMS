SELECT top(3) AVG(FREIGHT) AS NEWFREIGHT, ShipCountry, 
  Cast( OrderDate as varchar)
   FROM Orders
    WHERE OrderDate between '1998-01-01' and '1998-12-31'
     GROUP BY ShipCountry, OrderDate
       ORDER BY [NEWFREIGHT] DESC

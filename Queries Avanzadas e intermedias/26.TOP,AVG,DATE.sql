---solucion 1---

SELECT top(3) avg(FREIGHT) AS FREIGHT, ShipCountry
   FROM Orders
      where OrderDate >= '01-01-2015' and OrderDate < '01-01-2016'
       GROUP BY ShipCountry 
	     order by [FREIGHT] desc

---solucion 2---
SELECT top(3) avg(FREIGHT) AS FREIGHT, ShipCountry
   FROM Orders
      where datepart (year,OrderDate) >='2015' and datepart (year,OrderDate) <'2016'
       GROUP BY ShipCountry 
	     order by [FREIGHT] desc


--@rikardoroa
       

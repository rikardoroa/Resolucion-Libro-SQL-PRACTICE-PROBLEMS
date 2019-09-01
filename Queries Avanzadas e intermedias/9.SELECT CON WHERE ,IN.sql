---solucion1----

SELECT OrderID,CustomerID, ShipCountry 
  FROM Orders
   WHERE ShipCountry
      IN ('Brazil','mexico','Argentina','Venezuela')


---solucion2---
SELECT OrderID,CustomerID, ShipCountry 
  FROM Orders
   WHERE ShipCountry
      IN (SELECT ShipCountry from orders where ShipCountry in ('Brazil','mexico','Argentina','Venezuela'))


-----@rikardoroa
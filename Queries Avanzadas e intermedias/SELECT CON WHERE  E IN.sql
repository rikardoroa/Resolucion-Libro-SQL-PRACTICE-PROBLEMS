SELECT OrderID,CustomerID, ShipCountry 
  FROM Orders
   WHERE ShipCountry
      IN ('Brazil','mexico','Argentina','Venezuela')
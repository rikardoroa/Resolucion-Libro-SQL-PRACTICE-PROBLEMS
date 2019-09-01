SELECT OrderID,CustomerID, ShipCountry 
  FROM Orders
   WHERE ShipCountry like '%France%' 
      Or ShipCountry like '%Belgium%'

---@rikardoroa

--solucion--
SELECT Top(3) AVG(FREIGHT) AS NEWFREIGHT, 
ShipCountry 
FROM Orders
     GROUP BY ShipCountry
     ORDER BY [NEWFREIGHT] DESC

---@rikardoroa
--solucion

SELECT COUNT(ContactTitle) Count_ContactTitle, ContactTitle
   FROM Customers
      GROUP BY ContactTitle

---@rikardoroa
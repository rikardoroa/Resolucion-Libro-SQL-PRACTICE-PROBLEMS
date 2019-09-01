---solucion 1---

SELECT FirstName,LastName, 
  Cast (BirthDate as Date) AS Birthdate 
    FROM Employees
      Order by BirthDate ASC

---solucion 2---
SELECT FirstName,LastName, 
  Convert (Date, BirthDate) AS Birthdate 
    FROM Employees
      Order by BirthDate ASC

---@rikardoroa
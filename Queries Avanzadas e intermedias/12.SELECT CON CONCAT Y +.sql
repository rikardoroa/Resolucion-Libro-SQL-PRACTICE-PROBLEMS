
----solucion 1---
SELECT Lastname, Firstname,
  CONCAT (Lastname,' ',Firstname) as Fullname
    FROM Employees

--solucion 2---

SELECT Lastname, Firstname,
   Lastname+' '+Firstname as Fullname
     FROM Employees


---@rikardoroa


----solucion 1----
SELECT FirstName,LastName, BirthDate 
 FROM Employees
  Order by BirthDate ASC

----solucion 2---
SELECT FirstName,LastName, 
  cast(BirthDate as nvarchar(50)) as Birthdate
   FROM Employees
    where cast(BirthDate as nvarchar(50))is not null
      Order by BirthDate ASC

---@rikardoroa
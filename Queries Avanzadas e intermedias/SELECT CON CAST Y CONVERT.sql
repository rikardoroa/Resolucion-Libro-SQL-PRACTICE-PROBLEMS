SELECT FirstName,LastName, 
  Cast (BirthDate as Date) AS Birthdate 
    FROM Employees
      Order by BirthDate ASC


SELECT FirstName,LastName, 
  Convert (Date, BirthDate) AS Birthdate 
    FROM Employees
      Order by BirthDate ASC
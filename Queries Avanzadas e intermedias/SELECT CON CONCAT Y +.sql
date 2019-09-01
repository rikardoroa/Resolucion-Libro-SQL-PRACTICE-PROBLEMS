SELECT Lastname, Firstname,
  CONCAT (Lastname,' ',Firstname) as Fullname
    FROM Employees

	SELECT Lastname, Firstname,
      Lastname+' '+Firstname as Fullname
       FROM Employees

----solucion 1-----
SELECT  orderid , EmployeeID 
   FROM orders
      WHERE employeeid in (SELECT  EmployeeID from Employees  where EmployeeID=5  )
go
---------solucion 2----
SELECT  orderid , EmployeeID 
   FROM orders WHERE EmployeeID=5

go
--@rikardoroa
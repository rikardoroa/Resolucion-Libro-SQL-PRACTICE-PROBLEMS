---solucion 1---

SELECT customers.CustomerID, CompanyName,
SUM((Unitprice * Quantity)*(1-Discount)) as Total,
SUM(Unitprice * Quantity) as TotalWithoutDiscount
   FROM Customers 
	  inner join Orders
	  on Orders.CustomerID = Customers.CustomerID
      inner join OrderDetails 
	  on OrderDetails.OrderID = Orders.OrderId
		 where OrderDate>='01-01-2016' and OrderDate<='31-12-2016'
		 Group by customers.CustomerID, CompanyName
	     having  SUM((Unitprice * Quantity)*(1-Discount))>=10000
		 order by [total] desc


---solucion 2--


SELECT customers.CustomerID, CompanyName,
SUM((Unitprice * Quantity)*(1-Discount)) as Total,
SUM(Unitprice * Quantity) as TotalWithoutDiscount
   FROM Customers 
	  inner join Orders
	  on Orders.CustomerID = Customers.CustomerID
      inner join OrderDetails 
	  on OrderDetails.OrderID = Orders.OrderId
		 where datepart (year,OrderDate)>='2016' and datepart (year,OrderDate)<='2016'
		 Group by customers.CustomerID, CompanyName
	     having  SUM((Unitprice * Quantity)*(1-Discount))>=10000
		 order by [total] desc


---@rikardoroa



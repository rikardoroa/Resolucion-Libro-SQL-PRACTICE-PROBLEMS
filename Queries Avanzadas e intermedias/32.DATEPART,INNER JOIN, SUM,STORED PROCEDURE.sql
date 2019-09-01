----inicio de problemas avanzados--
--solucion 1---

SELECT orders.CustomerID,Customers.CompanyName,orders.OrderID,
sum(UnitPrice*Quantity) as TotalAmount  
 FROM Customers
	 inner join Orders on
	 Orders.CustomerID = Customers.CustomerID
     inner join OrderDetails on
     orderdetails.OrderID = Orders.OrderID
           where datepart(YEAR,OrderDate)>=2016 and  datepart(YEAR,OrderDate)<2017
	       group by ORDERS.OrderDate,orders.orderid,orders.CustomerID,Customers.CompanyName
		       having sum(UnitPrice*Quantity) >=10000
                order by [TotalAmount] desc

go

---solucion 2---

CREATE PROCEDURE HIGHVALUECUSTOMERS
@Quantity int, @date int, @date2 int
AS

SELECT orders.CustomerID,Customers.CompanyName,orders.OrderID,
sum(UnitPrice*Quantity) as TotalAmount  
 FROM Customers
	 inner join Orders on
	 Orders.CustomerID = Customers.CustomerID
     inner join OrderDetails on
     orderdetails.OrderID = Orders.OrderID
           where datepart(YEAR,OrderDate)>=@date and  datepart(YEAR,OrderDate)<@date2
	       group by ORDERS.OrderDate,orders.orderid,orders.CustomerID,Customers.CompanyName
		       having sum(UnitPrice*Quantity) >=@Quantity
                order by [TotalAmount] desc

GO
 

EXEC HIGHVALUECUSTOMERS 10000, @date=2016, @date2=2017
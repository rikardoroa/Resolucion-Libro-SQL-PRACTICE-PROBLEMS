

SELECT datepart(YEAR,OrderDate)as year,orders.orderid,orders.CustomerID,
 sum(UnitPrice*Quantity) as Quantity  
    FROM ORDERS 
     inner join OrderDetails on
       orderdetails.OrderID = Orders.OrderID
        where datepart(YEAR,OrderDate)>=2016 and  datepart(YEAR,OrderDate)<2017
	     group by ORDERS.OrderDate,orders.orderid,orders.CustomerID
		  having sum(UnitPrice*Quantity) >=10000
           order by [Quantity] desc

go


CREATE PROCEDURE ORDERSALES
@Quantity int, @date int, @date2 int
AS

SELECT datepart(YEAR,OrderDate)as year,orders.orderid,orders.CustomerID,
 sum(UnitPrice*Quantity) as Quantity  
    FROM ORDERS 
     inner join OrderDetails on
       orderdetails.OrderID = Orders.OrderID
        where datepart(YEAR,OrderDate)>=@date and datepart(YEAR,OrderDate)<@date2
	     group by ORDERS.OrderDate,orders.orderid,orders.CustomerID
		  having sum(UnitPrice*Quantity) >= @Quantity
           order by [Quantity] desc

GO
 

EXEC ORDERSALES 10000, @date=2016, @date2=2017
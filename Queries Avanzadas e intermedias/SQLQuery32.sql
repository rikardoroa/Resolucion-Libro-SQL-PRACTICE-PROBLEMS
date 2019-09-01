CREATE PROCEDURE ORDERSALES
@Date int,@Date2 int,@Quantity int
AS

SELECT datepart(YEAR,shippeddate)as year,orders.orderid,orders.CustomerID,
 sum(UnitPrice*Quantity) as Quantity  
    FROM ORDERS 
     inner join OrderDetails on
       orderdetails.OrderID = Orders.OrderID
        where datepart(YEAR,OrderDate)>=@Date and  datepart(YEAR,OrderDate)<@date2
		and @Quantity=Quantity and @Date=datepart(YEAR,OrderDate) and @Date2=datepart(YEAR,OrderDate)   
	     group by ORDERS.ShippedDate,orders.orderid,orders.CustomerID
		  having sum(UnitPrice*Quantity) >=@Quantity
           order by [Quantity] desc

GO

EXEC ORDERSALES 2016,2017,15000

DROP PROCEDURE ORDERSALES
Declare @maxdate  as DATETIME
Declare @date as DATETIME
SET @maxdate =(select max(orderdate) from Orders)
SET @date= (Select Dateadd(month,-12, (select max(orderdate) ) )from orders)
SELECT  top(3) avg(FREIGHT) AS FREIGHT, ShipCountry
     FROM Orders
	   where OrderDate >=@date and OrderDate <=@maxdate
           GROUP BY ShipCountry 
	         order by [FREIGHT] desc
       
	
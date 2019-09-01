SELECT customers.CustomerID, CompanyName,
 SUM((Unitprice * Quantity)*(1-Discount)) as total,
  SUM(Unitprice * Quantity) as totalWithoutDiscount
    FROM Customers 
	  inner join Orders
	    on Orders.CustomerID = Customers.CustomerID
          inner join OrderDetails 
	        on OrderDetails.OrderID = Orders.OrderId
			 where OrderDate>='01-01-2016' and OrderDate<='31-12-2016'
			  Group by customers.CustomerID, CompanyName
			    having  SUM((Unitprice * Quantity)*(1-Discount))>=10000
				  order by [total] desc
	   
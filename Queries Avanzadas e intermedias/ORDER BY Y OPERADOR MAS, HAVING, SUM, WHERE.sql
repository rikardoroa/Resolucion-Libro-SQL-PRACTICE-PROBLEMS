SELECT  ProductID, ProductName, UnitsInStock,
  ReorderLevel,  UnitsOnOrder,Discontinued,
    (UnitsInStock + UnitsOnOrder) as SumCheck
     FROM Products
       where UnitsInStock < ReorderLevel
	     and (UnitsInStock + UnitsOnOrder)<=ReorderLevel
		  and Discontinued = 0
           order by ProductID


		   

SELECT  ProductID, ProductName, UnitsInStock,
  ReorderLevel,  UnitsOnOrder,Discontinued,
    sum(UnitsInStock) + sum(UnitsOnOrder) as SumCheck
     FROM Products
       where UnitsInStock < ReorderLevel
		  and Discontinued = 0
			   Group by ProductID, ProductName, UnitsInStock,
                  ReorderLevel,  UnitsOnOrder,Discontinued
				    having sum(UnitsInStock) + sum(UnitsOnOrder)<= ReorderLevel
			          order by ProductID
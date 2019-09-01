SELECT Count(CategoryName)as TotalProducts, CategoryName 
  FROM Products
    INNER JOIN Categories ON
	 Products.CategoryID = Categories.CategoryID
       Group by CategoryName
         Order by [TotalProducts] desc

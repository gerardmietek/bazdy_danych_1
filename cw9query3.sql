
WITH SummedProducts AS
(
	SELECT SUM(OrderQty * ( UnitPrice - UnitPriceDiscount )) AS ProductRevenue,
	ProductID AS id
	FROM SalesLT.SalesOrderDetail
	GROUP BY ProductID
),

CategoryName AS
(
	SELECT p.ProductID AS id, pc.Name AS cname
	FROM SalesLT.Product as p
	INNER JOIN SalesLt.ProductCategory AS pc
	ON p.ProductCategoryID = pc.ProductCategoryID
)

SELECT cname AS Category, SUM( ProductRevenue ) AS SalesValue
FROM CategoryName AS cn
INNER JOIN SummedProducts AS sp
ON cn.id= sp.id
GROUP BY cname
BEGIN TRANSACTION T6;
IF EXISTS ( SELECT OrderQty
			FROM Sales.SalesOrderDetail
			WHERE OrderQty = 0)
ROLLBACK;
ELSE
UPDATE Sales.SalesOrderDetail
SET OrderQty = OrderQty*2;
COMMIT;
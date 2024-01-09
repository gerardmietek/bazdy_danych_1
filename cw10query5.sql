BEGIN TRANSACTION T5;
INSERT INTO Production.Product (Name, ProductNumber, MakeFlag, FinishedGoodsFlag,
								SafetyStockLevel, ReorderPoint, StandardCost,
								DaysToManufacture, ListPrice,  SellStartDate)
VALUES( 'NOWY', '666', 1, 1, 1, 1, 1,  666, 2137, GETDATE() );
IF (SELECT COUNT(*) 
	FROM Production.Product
	WHERE ProductNumber = '666') > 1
ROLLBACK;
ELSE
COMMIT;

/*SELECT *
FROM Production.Product
WHERE ProductNumber = '666';*/
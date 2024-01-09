BEGIN TRANSACTION T3;
INSERT INTO Production.Product (Name, ProductNumber, MakeFlag, FinishedGoodsFlag,
								SafetyStockLevel, ReorderPoint, StandardCost,
								DaysToManufacture, ListPrice,  SellStartDate)
VALUES( 'NOWY', 666, 1, 1, 1, 1, 1,  666, 2137, GETDATE() );

SELECT *
FROM Production.Product
WHERE Name='NOWY';

COMMIT;

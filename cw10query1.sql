BEGIN TRANSACTION T1;
UPDATE Production.Product
SET StandardCost = StandardCost * 1.1
WHERE ProductID = 680;
COMMIT;

BEGIN TRANSACTION T23;
DELETE FROM Production.Product
WHERE ProductNumber = '666'
/* SELECT *
FROM Production.Product
WHERE ProductNumber = '666' */
ROLLBACK;
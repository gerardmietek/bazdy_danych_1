
CREATE TRIGGER TriggerLastName
ON Person.Person
AFTER INSERT 
AS
BEGIN
	UPDATE Person.Person
		SET LastName = UPPER(Person.LastName)
		FROM inserted
		WHERE Person.BusinessEntityID = inserted.BusinessEntityID
END;


CREATE OR ALTER TRIGGER taxRateCheck
ON Sales.SalesTaxRate
AFTER UPDATE 
AS
BEGIN
	IF UPDATE(TaxRate)
	BEGIN 
		DECLARE @prev DECIMAL(8, 4);
		DECLARE @new DECIMAL(8, 4);

		SELECT @prev = TaxRate FROM deleted;
		SELECT @new = TaxRate FROM inserted;

		IF @new > @prev * 1.3
		BEGIN
			RAISERROR('Error: Tax rate cannot exceed 30%', 16, 1);
			ROLLBACK;
			RETURN;
		END;
	END;
END;



WITH EmployeeRateTable AS
(
	SELECT FirstName, LastName, Rate
	FROM Person.Person AS p
	INNER JOIN HumanResources.EmployeePayHistory AS h
	ON p.BusinessEntityID = h.BusinessEntityID
	WHERE p.PersonType IN ('EM', 'SP') AND h.ModifiedDate = 
								(
								SELECT MAX(ModifiedDate)
								FROM HumanResources.EmployeePayHistory AS h2
								WHERE h2.BusinessEntityID = p.BusinessEntityID
								)
)

SELECT * 
INTO #TempEmployeeInfo
FROM EmployeeRateTable;

SELECT *
FROM #TempEmployeeInfo
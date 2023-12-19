
WITH CpCt AS
(
	SELECT DISTINCT CONCAT( c.CompanyName, ' (', c.FirstName, ' ', c.LastName, ')' ) AS ContactCompany,
		   c.CustomerID AS id
	FROM SalesLT.Customer AS c
),

totalDue AS
(
	SELECT SUM( soh.TotalDue ) AS Revenue,
	       soh.CustomerID as id
	FROM SalesLT.SalesOrderHeader AS soh
	GROUP BY soh.CustomerID
)

SELECT ContactCompany, Revenue
FROM CpCt AS c
INNER JOIN totalDue AS td
ON c.id =td.id
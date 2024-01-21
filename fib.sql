CREATE OR ALTER FUNCTION dbo.Fibbonacci
( 
    @n INT 
)

RETURNS @FibTable TABLE
(
    nFib INT
)

AS
BEGIN

    DECLARE @x1 INT = 0, @x2 INT = 1, @i INT = 1;

    WHILE @i < @n
    BEGIN
        INSERT INTO @FibTable (nFib) VALUES (@x1);
        SET @x1 = @x1 + @x2;
        SET @fx = @fx - @fx;
        SET @i = @i + 1;
    END

    RETURN;
END;

CREATE PROCEDURE dbo.PrintFib(@n INT) AS
	BEGIN
		DECLARE @FibTbl TABLE(nFib INT);
		
		INSERT INTO @FibTbl 
			SELECT nFib FROM dbo.FibSeq(@n);

		SELECT nFib
		FROM @FibTbl
	END;
GO
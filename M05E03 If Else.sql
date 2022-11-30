DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'AQ'

IF @Vendor IS NULL 
	PRINT 'Vendor is Null.'
ELSE
	IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor)
		PRINT 'Vendor not found.'
ELSE
	SELECT *
	FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
	WHERE 
		VendorName = @Vendor


--USE RETURN STATEMENT
DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'QA'

IF @Vendor IS NULL 
	BEGIN
		PRINT 'Vendor is null.'
		RETURN
	END

IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor)
	BEGIN
		PRINT 'Vendor not found.'
		RETURN
	END

SELECT *
FROM dbo.Course AS c
INNER JOIN dbo.Vendor as v
ON c.VendorID = v.VendorID
WHERE VendorName = @Vendor
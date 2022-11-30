DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'AQ'

IF @Vendor IS NULL
	BEGIN
		THROW 54000, 'Vendor must not be null.', 1
		RETURN
	END

IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor)
	BEGIN
		DECLARE @message VARCHAR(100)
		SET @message = FORMATMESSAGE('Vendor %s cannot be found.', @Vendor);
		THROW 54000, @message, 1
		RETURN
	END

SELECT *
FROM dbo.Course AS c
INNER JOIN dbo.Vendor as v
ON c.VendorID = v.VendorID
WHERE VendorName = @Vendor
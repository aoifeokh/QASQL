SELECT * INTO #MicrosoftLocal
FROM dbo.Course 
WHERE VendorID = 2

SELECT * INTO ##MicrosoftGlobal
FROM dbo.Course 
WHERE VendorID = 2

GO 
SELECT * FROM #MicrosoftLocal
SELECT * FROM ##MicrosoftGlobal
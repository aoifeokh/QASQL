SELECT * 
FROM(SELECT VendorName, CourseName, StartDate, NumberDelegates
FROM dbo.VendorCourseDateDelegateCount)
AS BaseData
PIVOT
(SUM(NumberDelegates) FOR VendorName IN (QA, Microsoft, Oracle))
AS Pivotted



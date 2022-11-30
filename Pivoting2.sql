SELECT VendorName, CourseName, StartDate, 
SUM(NumberDelegates) AS NumDelegates
FROM dbo.VendorCourseDateDelegateCount
GROUP BY VendorName, CourseName, StartDate
WITH ROLLUP
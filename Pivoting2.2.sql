SELECT VendorName, CourseName, StartDate, 
SUM(NumberDelegates) AS NumDelegates,
GROUPING_ID (VendorName, CourseName, StartDate) AS GroupingType
FROM dbo.VendorCourseDateDelegateCount
GROUP BY 
GROUPING SETS (
(VendorName), 
(VendorName, CourseName),
(VendorName, CourseName, StartDate) 
)
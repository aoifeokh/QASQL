SELECT *, 
RANK() OVER (ORDER BY NumberDelegates DESC) AS LeaguePosRank,
DENSE_RANK() OVER (ORDER BY NumberDelegates DESC) AS LeaguePosDenseRank,
ROW_NUMBER() OVER (ORDER BY NumberDelegates DESC) AS LeaguePosRow,
NTILE(3) OVER (ORDER BY NumberDelegates DESC) AS LeaguePosNtile
FROM dbo.VendorCourseDelegateCount

SELECT * , RANK() OVER (PARTITION BY Vendorname ORDER BY NumberDelegates DESC)
FROM dbo.VendorCourseDelegateCount

WITH RankedCourses AS
(
SELECT *,
RANK() OVER (PARTITION BY VendorName ORDER BY NumberDelegates DESC)
AS LeaguePosition
FROM dbo.VendorCourseDelegateCount
)

SELECT VendorName, CourseName, NumberDelegates
FROM RankedCourses
WHERE LeaguePosition = 1
CREATE VIEW dbo.CourseList
AS
SELECT  c.CourseName, c.CourseID, v.VendorName
FROM Course as c
INNER JOIN Vendor as v
ON 
c.VendorID = v.VendorID

SELECT * FROM dbo.CourseList
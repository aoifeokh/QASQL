--Find delegates enrolled in both QATSQL and QATSQLPLUS courses
SELECT da.DelegateID 
FROM dbo.DelegateAttendance AS da
INNER JOIN dbo.CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
INNER JOIN dbo.Course AS c
ON c.CourseID = cr.CourseID
WHERE c.CourseName = 'QATSQL'
INTERSECT
SELECT da.DelegateID 
FROM dbo.DelegateAttendance AS da
INNER JOIN dbo.CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
INNER JOIN dbo.Course AS c
ON c.CourseID = cr.CourseID
WHERE c.CourseName = 'QATSQLPLUS'
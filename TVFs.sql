CREATE FUNCTION udf_DelegateDays1() RETURNS TABLE
AS
RETURN
(
	SELECT  d.DelegateID, SUM(cr.DurationDays) AS DelegateDays, COUNT(*) AS DelegateCourses
	FROM dbo.Delegate AS d
	INNER JOIN dbo.DelegateAttendance AS da
	ON d.DelegateID = da.DelegateID
	INNER JOIN dbo.CourseRun AS cr
	ON cr.CourseRunID = da.CourseRunID
	GROUP BY d.DelegateID
)

GO
SELECT * FROM dbo.udf_DelegateDays1()

GO

CREATE FUNCTION udf_IndividualDelegateDays(@DelegateID INT) RETURNS TABLE
AS
RETURN
(
	SELECT  @DelegateID AS DelegateID, SUM(cr.DurationDays) AS DelegateDays, COUNT(*) AS DelegateCourses
	FROM dbo.Delegate AS d
	INNER JOIN dbo.DelegateAttendance AS da
	ON d.DelegateID = da.DelegateID
	INNER JOIN dbo.CourseRun AS cr
	ON cr.CourseRunID = da.CourseRunID
	WHERE d.DelegateID = @DelegateID
)

GO
SELECT * FROM dbo.udf_IndividualDelegateDays(1)


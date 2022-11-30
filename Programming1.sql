DECLARE @TotalDelegates INT
SELECT @TotalDelegates = COUNT(*)
FROM dbo.Delegate
PRINT @TotalDelegates
SELECT ProductID, TransferDate, TransferAmount, SUM(TransferAmount) 
OVER (PARTITION BY ProductID ORDER BY TransferDate)
AS RunningStock
FROM dbo.BookTransfers


-- Ex 1 Task 2 Starting Point
DECLARE @ProductID INT = 4
DECLARE @Amount INT = 1

IF (@ProductID IS NULL OR @Amount IS NULL)
	BEGIN
		THROW 59999, 'Variables must not be Null.', 1
		RETURN
	END

BEGIN TRY
	BEGIN TRAN
		INSERT INTO dbo.BookTransfers VALUES 				                
				(@ProductID,getdate(),'Transfer Out',-@Amount)
		UPDATE dbo.BookStock
			SET StockAmount = StockAmount - @Amount
			WHERE ProductID = @ProductID	
	COMMIT TRAN
END TRY

BEGIN CATCH
ROLLBACK TRAN;
THROW 59999, 'Error. Everything has reset.', 1
END CATCH
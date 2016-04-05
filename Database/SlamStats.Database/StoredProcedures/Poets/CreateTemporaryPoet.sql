CREATE PROCEDURE [dbo].[CreateTemporaryPoet]
	@name nvarchar(50),
	@email nvarchar(100),
	@slamId bigint
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @currentDate datetime2(7) = SYSUTCDATETIME();
	DECLARE @poetId bigint = 0;
	
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO dbo.Poets
			(Name, Email, DateCreated, TemporaryOwnerSlamId)
			VALUES
			(@name, @email, @currentDate, @slamId) 

			SET @poetId = @@IDENTITY;
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		
	END CATCH

	RETURN @poetId;
END
GO

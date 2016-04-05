CREATE PROCEDURE [dbo].[CreatePoet]
	@name nvarchar(50),
	@email nvarchar(100),
	@description nvarchar(MAX),
	@image nvarchar(250),
	@featureDescription nvarchar(MAX)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @currentDate datetime2(7) = SYSUTCDATETIME();
	DECLARE @poetId bigint = 0;
	
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO dbo.Poets
			(Name, Description, Email, FeatureDescription, Image, DateClaimed, DateCreated)
			VALUES
			(@name, @description, @email, @featureDescription, @image, @currentDate, @currentDate) 

			SET @poetId = @@IDENTITY;

			-- This poet claims themself.
			UPDATE dbo.Poets
			SET
				ClaimedByPoetId = @poetId
			WHERE
				PoetId = @poetId

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		
	END CATCH

	RETURN @poetId;
END
GO

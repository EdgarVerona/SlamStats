CREATE PROCEDURE [dbo].[EditPoet]
	@poetId bigint,
	@name nvarchar(50),
	@description nvarchar(MAX),
	@featureDescription nvarchar(MAX),
	@email nvarchar(100),
	@image nvarchar(250)
AS
BEGIN

	SET NOCOUNT ON;

	BEGIN TRANSACTION

		SELECT
			@name =
				CASE @name
					WHEN NULL THEN Name
					ELSE @name
				END,
			@description =
				CASE @description
					WHEN NULL THEN Description
					ELSE @description
				END,
			@featureDescription =
				CASE @featureDescription
					WHEN NULL THEN FeatureDescription
					ELSE @featureDescription
				END,
			@email =
				CASE @email
					WHEN NULL THEN Email
					ELSE @email
				END,
			@image =
				CASE @image
					WHEN NULL THEN Image
					ELSE @image
				END
		FROM
			dbo.Poets
		WHERE
			PoetId = @poetId

		UPDATE dbo.Poets
		SET
			Description = @description,
			name = @name,
			FeatureDescription = @featureDescription,
			Image = @image,
			Email = @email
		WHERE
			PoetId = @poetId

	COMMIT TRANSACTION

END
GO
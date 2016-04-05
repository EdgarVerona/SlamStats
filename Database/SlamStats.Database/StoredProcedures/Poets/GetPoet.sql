CREATE PROCEDURE [dbo].[GetPoet]
	@poetId bigint
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		PoetId,
		Name,
		Description,
		Image,
		FeatureDescription,
		TemporaryOwnerSlamId,
		DateCreated,
		DateClaimed,
		ClaimedByPoetId,
		Email
	FROM
		dbo.Poets WITH (NOLOCK)
	WHERE
		PoetId = @poetId

END
GO
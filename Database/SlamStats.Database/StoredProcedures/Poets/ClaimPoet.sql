CREATE PROCEDURE [dbo].[ClaimPoet]
	@requestingPoetId bigint,
	@targetPoetId bigint,
	@reviewerPoetId bigint
AS
BEGIN

	DECLARE @currentDate datetime2(7) = SYSUTCDATETIME();

	BEGIN TRANSACTION
		
		DECLARE @reviewStatus int = null;
		DECLARE @temporaryPoetIdFound bigint = null;

		SELECT
			ReviewStatus = @reviewStatus,
			TemporaryPoetId = @temporaryPoetIdFound
		FROM
			dbo.ProfileOwnershipRequests
		WHERE
			RequestingPoetId = @requestingPoetId
			AND TemporaryPoetId = @targetPoetId

		IF (@temporaryPoetIdFound IS NULL)
		BEGIN
			ROLLBACK TRANSACTION
			RETURN 50501; -- PoetClaimRequestNotFound
		END
		IF (@reviewStatus IS NOT NULL)
		BEGIN
			ROLLBACK TRANSACTION
			RETURN 50503; -- PoetRequestAlreadyProcessed
		END

		UPDATE dbo.Poets
		SET
			ClaimedByPoetId = @requestingPoetId,
			DateClaimed = @currentDate
		WHERE
			PoetId = @targetPoetId

		IF (@@ROWCOUNT = 0)
		BEGIN
			ROLLBACK TRANSACTION
			RETURN 50502; -- PoetNotFound
		END

		UPDATE dbo.ProfileOwnershipRequests
		SET
			ReviewStatus = 1, -- 1 == Approved
			DateReviewed = @currentDate,
			ReviewedByPoetId = @reviewerPoetId
		WHERE
			RequestingPoetId = @requestingPoetId
			AND TemporaryPoetId = @targetPoetId

		UPDATE dbo.BoutParticipant
		SET
			PoetId = @requestingPoetId
		WHERE
			PoetId = @targetPoetId

		UPDATE dbo.BoutParticipantScores
		SET
			PoetId = @requestingPoetId
		WHERE
			PoetId = @targetPoetId

		UPDATE dbo.BoutFeatures
		SET
			PoetId = @requestingPoetId
		WHERE
			PoetId = @targetPoetId

		-- IMPORTANT: If more tables are created that could be Claimable, add them!

	COMMIT TRANSACTION

	RETURN 0;
END
GO

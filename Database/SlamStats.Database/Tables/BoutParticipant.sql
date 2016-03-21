CREATE TABLE [dbo].[BoutParticipant]
(
	[BoutId] BIGINT NOT NULL , 
    [PoetId] BIGINT NOT NULL, 
    [AddedByPoetId] BIGINT NOT NULL, 
    [BoutRank] INT NOT NULL, 
    PRIMARY KEY ([BoutId], [PoetId])
)

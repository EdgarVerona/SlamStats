CREATE TABLE [dbo].[BoutScorekeepers]
(
	[BoutId] BIGINT NOT NULL , 
    [ScorekeeperPoetId] BIGINT NOT NULL, 
    PRIMARY KEY ([BoutId], [ScorekeeperPoetId])
)

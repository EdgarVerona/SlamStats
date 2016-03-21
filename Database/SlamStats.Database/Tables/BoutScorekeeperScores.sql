CREATE TABLE [dbo].[BoutScorekeeperScores]
(
	[BoutId] BIGINT NOT NULL , 
    [RoundNumber] INT NOT NULL, 
    [PoetId] BIGINT NOT NULL, 
    [ScorekeeperPoetId] BIGINT NOT NULL, 
    [Score1] INT NOT NULL, 
    [Score2] INT NOT NULL, 
    [Score3] INT NOT NULL, 
    [Score4] INT NOT NULL, 
    [Score5] INT NOT NULL,
	[TimeInSeconds] INT NOT NULL, 
    [TimePenalty] INT NOT NULL,
	[DateEntered] DATETIME2 NOT NULL, 
    [RoundScore] INT NOT NULL, 
    PRIMARY KEY ([BoutId], [RoundNumber], [PoetId], [ScorekeeperPoetId]),
)

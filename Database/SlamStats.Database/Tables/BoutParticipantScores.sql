CREATE TABLE [dbo].[BoutParticipantScores]
(
	[BoutId] BIGINT NOT NULL , 
    [RoundNumber] INT NOT NULL, 
    [PoetId] BIGINT NOT NULL, 
    [Score1] INT NULL, 
    [Score2] INT NULL, 
    [Score3] INT NULL, 
    [Score4] INT NULL, 
    [Score5] INT NULL, 
    [TimeInSeconds] INT NULL, 
    [TimePenalty] INT NULL, 
    [HasPerformed] BIT NOT NULL, 
    [DateEntered] DATETIME2 NULL, 
    [EnteredByPoetId] BIGINT NULL, 
    [DateModified] DATETIME2 NULL, 
    [ModifiedByPoetId] BIGINT NULL, 
    [RoundScore] INT NULL, 
    PRIMARY KEY ([BoutId], [RoundNumber], [PoetId])
)

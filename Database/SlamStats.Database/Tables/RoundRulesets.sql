CREATE TABLE [dbo].[RoundRulesets]
(
	[EntityId] BIGINT NOT NULL , 
    [EntityType] INT NOT NULL, 
	[RoundNumber] INT NOT NULL,
    [MaxTimeInSeconds] INT NOT NULL, 
    [RankFormatOverride] INT NULL, 
    [TurnOrderOverride] INT NULL, 
    PRIMARY KEY ([EntityId], [EntityType])
)

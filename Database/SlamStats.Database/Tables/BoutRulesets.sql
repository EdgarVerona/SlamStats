CREATE TABLE [dbo].[BoutRulesets]
(
	[EntityId] BIGINT NOT NULL, 
    [EntityType] INT NOT NULL,
	[RankFormat] INT NOT NULL, 
    [PenaltyPerSpan] DECIMAL(14, 4) NOT NULL, 
    [PenaltySpanInSeconds] INT NOT NULL, 
    [TurnOrder] INT NOT NULL, 
    [ParentEntityId] INT NOT NULL, 
    [ParentEntityType] INT NOT NULL, 
    PRIMARY KEY ([EntityId], [EntityType])
)

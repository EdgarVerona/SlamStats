CREATE TABLE [dbo].[SlamMembers]
(
	[SlamId] BIGINT NOT NULL , 
    [PoetId] BIGINT NOT NULL, 
    [CanEditProfile] BIT NOT NULL, 
    [CanScorekeep] BIT NOT NULL, 
    [CanEditEvents] BIT NOT NULL, 
    [CanEditEventTypes] BIT NOT NULL, 
    [CanEditRulesets] BIT NOT NULL, 
    [CanEditMembers] BIT NOT NULL, 
    [DateAdded] DATETIME2 NOT NULL, 
    [DateModified] DATETIME2 NOT NULL, 
    [AddedByPoetId] BIGINT NOT NULL, 
    [ModifiedByPoetId] BIGINT NOT NULL, 
    [CanEditMemberRights] BIT NOT NULL, 
    PRIMARY KEY ([SlamId], [PoetId])
)

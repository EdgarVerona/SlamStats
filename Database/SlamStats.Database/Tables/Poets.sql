CREATE TABLE [dbo].[Poets]
(
	[PoetId] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [Image] NVARCHAR(250) NULL, 
    [TemporaryOwnerSlamId] BIGINT NULL, 
    [DateCreated] DATETIME2 NOT NULL, 
    [DateClaimed] DATETIME2 NULL, 
    [ClaimedByPoetId] BIGINT NULL, 
    [FeatureDescription] NVARCHAR(MAX) NULL
)

CREATE TABLE [dbo].[CustomSections]
(
	[CustomSectionId] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [EntityId] BIGINT NOT NULL, 
    [EntityType] INT NOT NULL, 
    [Order] INT NOT NULL, 
    [Title] NVARCHAR(100) NOT NULL, 
    [Body] NVARCHAR(MAX) NOT NULL, 
    [CreatedByPoetId] BIGINT NOT NULL, 
    [DateCreated] DATETIME2 NOT NULL, 
    [ModifiedByPoetId] BIGINT NOT NULL, 
    [DateModified] DATETIME2 NOT NULL
)

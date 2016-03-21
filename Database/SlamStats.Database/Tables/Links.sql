CREATE TABLE [dbo].[Links]
(
	[LinkId] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [EntityId] BIGINT NOT NULL, 
    [EntityType] INT NOT NULL, 
    [Link] NVARCHAR(250) NOT NULL, 
    [Caption] NVARCHAR(250) NULL, 
    [DateCreated] DATETIME2 NOT NULL, 
    [CreatedByPoetId] BIGINT NOT NULL, 
    [DateModified] DATETIME2 NOT NULL, 
    [ModifiedByPoetId] BIGINT NOT NULL, 
    [IsActive] BIT NOT NULL
)

CREATE TABLE [dbo].[EventTypes]
(
	[EventTypeId] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [Image] NVARCHAR(250) NULL, 
    [DateCreated] DATETIME2 NOT NULL, 
    [CreatedByPoetId] BIGINT NOT NULL, 
    [SlamId] BIGINT NOT NULL, 
    [DateModified] DATETIME2 NOT NULL, 
    [ModifiedByPoetId] BIGINT NOT NULL 
)

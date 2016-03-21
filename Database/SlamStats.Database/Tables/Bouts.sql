CREATE TABLE [dbo].[Bouts]
(
	[BoutId] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(100) NOT NULL, 
    [DateCreated] DATETIME2 NOT NULL, 
    [EventDate] DATETIME2 NOT NULL, 
    [EventSetId] BIGINT NULL, 
    [EventTypeId] BIGINT NULL, 
    [LocationId] BIGINT NOT NULL, 
    [Description] NVARCHAR(MAX) NOT NULL, 
    [Image] NVARCHAR(250) NOT NULL, 
    [SlamId] BIGINT NOT NULL, 
    [CreatedByPoetId] BIGINT NOT NULL, 
    [DateModified] DATETIME2 NOT NULL, 
    [ModifiedByPoetId] BIGINT NOT NULL
)

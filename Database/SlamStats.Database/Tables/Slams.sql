CREATE TABLE [dbo].[Slams]
(
	[SlamId] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(100) NOT NULL, 
    [Logo] NVARCHAR(250) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [DateCreated] DATETIME2 NOT NULL, 
    [IsActive] BIT NOT NULL, 
    [Subtitle] NVARCHAR(140) NULL, 
    [CreatedByPoetId] BIGINT NOT NULL, 
    [DateModified] DATETIME2 NOT NULL, 
    [ModifiedByPoetId] BIGINT NOT NULL 
)

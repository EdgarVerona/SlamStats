CREATE TABLE [dbo].[Locations]
(
	[LocationId] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [SlamId] BIGINT NOT NULL, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(MAX) NOT NULL, 
    [Address1] NVARCHAR(200) NULL, 
    [Address2] NVARCHAR(200) NULL, 
    [City] NVARCHAR(50) NULL, 
    [State] NVARCHAR(50) NULL, 
    [Country] NVARCHAR(50) NULL, 
    [ZipCode] NVARCHAR(50) NULL
)

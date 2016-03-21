CREATE TABLE [dbo].[ProfileOwnershipRequests]
(
	[TemporaryPoetId] BIGINT NOT NULL , 
    [RequestingPoetId] BIGINT NOT NULL, 
    [DateCreated] DATETIME2 NOT NULL, 
    [ReviewedByPoetId] BIGINT NULL, 
    [DateReviewed] DATETIME2 NULL, 
    [ReviewStatus] INT NOT NULL, 
    [RequestMessage] NVARCHAR(MAX) NULL, 
    [ResponseMessage] NVARCHAR(MAX) NULL, 
    PRIMARY KEY ([TemporaryPoetId], [RequestingPoetId])
)

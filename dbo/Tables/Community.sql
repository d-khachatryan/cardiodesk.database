CREATE TABLE [dbo].[Community] (
    [CommunityId]   INT           IDENTITY (1, 1) NOT NULL,
    [CommunityName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([CommunityId] ASC)
);


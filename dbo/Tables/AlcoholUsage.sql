CREATE TABLE [dbo].[AlcoholUsage] (
    [AlcoholUsageId]   INT           IDENTITY (1, 1) NOT NULL,
    [AlcoholUsageName] NVARCHAR (50) NULL,
    CONSTRAINT [PK_AlcoholUsage] PRIMARY KEY CLUSTERED ([AlcoholUsageId] ASC)
);


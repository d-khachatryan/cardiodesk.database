CREATE TABLE [dbo].[SmokingStatus] (
    [SmokingStatusId]   INT           IDENTITY (1, 1) NOT NULL,
    [SmokingStatusName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([SmokingStatusId] ASC)
);


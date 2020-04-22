CREATE TABLE [dbo].[PeripherialStatus] (
    [PeripherialStatusId]   INT           IDENTITY (1, 1) NOT NULL,
    [PeripherialStatusName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([PeripherialStatusId] ASC)
);


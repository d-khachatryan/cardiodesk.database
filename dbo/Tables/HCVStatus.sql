CREATE TABLE [dbo].[HCVStatus] (
    [HCVStatusId]   INT           IDENTITY (1, 1) NOT NULL,
    [HCVStatusName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([HCVStatusId] ASC)
);


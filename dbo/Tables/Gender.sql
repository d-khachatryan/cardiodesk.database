CREATE TABLE [dbo].[Gender] (
    [GenderId]   INT           IDENTITY (1, 1) NOT NULL,
    [GenderName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([GenderId] ASC)
);


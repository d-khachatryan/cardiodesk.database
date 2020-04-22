CREATE TABLE [dbo].[Complication] (
    [ComplicationId]   INT           IDENTITY (1, 1) NOT NULL,
    [ComplicationName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([ComplicationId] ASC)
);


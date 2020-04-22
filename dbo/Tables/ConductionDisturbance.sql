CREATE TABLE [dbo].[ConductionDisturbance] (
    [ConductionDisturbanceId]   INT           IDENTITY (1, 1) NOT NULL,
    [ConductionDisturbanceName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([ConductionDisturbanceId] ASC)
);


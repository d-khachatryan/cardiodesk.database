CREATE TABLE [dbo].[MortalityType] (
    [MortalityTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [MortalityTypeName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([MortalityTypeId] ASC)
);


CREATE TABLE [dbo].[GastrointestinalDisease] (
    [GastrointestinalDiseaseId]   INT           IDENTITY (1, 1) NOT NULL,
    [GastrointestinalDiseaseName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([GastrointestinalDiseaseId] ASC)
);


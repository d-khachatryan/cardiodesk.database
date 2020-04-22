CREATE TABLE [dbo].[PulmonaryDisease] (
    [PulmonaryDiseaseId]   INT           IDENTITY (1, 1) NOT NULL,
    [PulmonaryDiseaseName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([PulmonaryDiseaseId] ASC)
);


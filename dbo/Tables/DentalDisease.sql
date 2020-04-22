CREATE TABLE [dbo].[DentalDisease] (
    [DentalDiseaseId]   INT           IDENTITY (1, 1) NOT NULL,
    [DentalDiseaseName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([DentalDiseaseId] ASC)
);


CREATE TABLE [dbo].[Disease] (
    [DiseaseId]   INT           IDENTITY (1, 1) NOT NULL,
    [DiseaseName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([DiseaseId] ASC)
);


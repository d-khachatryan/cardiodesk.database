CREATE TABLE [dbo].[DiseaseStatus] (
    [DiseaseStatusId]   INT           IDENTITY (1, 1) NOT NULL,
    [DiseaseStatusName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([DiseaseStatusId] ASC)
);


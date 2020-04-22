CREATE TABLE [dbo].[CardiologicalCaseDisease] (
    [CardiologicalCaseDiseaseId] INT  IDENTITY (1, 1) NOT NULL,
    [CardiologicalCaseId]        INT  NULL,
    [DiseaseId]                  INT  NULL,
    [DiseaseDate]                DATE NULL,
    [OrganizationId]             INT  NULL,
    CONSTRAINT [PK_CardiologicalCaseDisease] PRIMARY KEY CLUSTERED ([CardiologicalCaseDiseaseId] ASC),
    CONSTRAINT [FK_CardiologicalCaseDisease_CardiologicalCase] FOREIGN KEY ([CardiologicalCaseId]) REFERENCES [dbo].[CardiologicalCase] ([CardiologicalCaseId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalCaseDisease_Disease] FOREIGN KEY ([DiseaseId]) REFERENCES [dbo].[Disease] ([DiseaseId]),
    CONSTRAINT [FK_CardiologicalCaseDisease_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


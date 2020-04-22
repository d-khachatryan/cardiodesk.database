CREATE TABLE [dbo].[CardiologicalCaseDrug] (
    [CardiologicalCaseDrugId] INT IDENTITY (1, 1) NOT NULL,
    [CardiologicalCaseId]     INT NULL,
    [DrugId]                  INT NULL,
    [DrugFrequencyId]         INT NULL,
    [Duration]                INT NULL,
    CONSTRAINT [PK_CardiologicalCaseDrug] PRIMARY KEY CLUSTERED ([CardiologicalCaseDrugId] ASC),
    CONSTRAINT [FK_CardiologicalCaseDrug_CardiologicalCase] FOREIGN KEY ([CardiologicalCaseId]) REFERENCES [dbo].[CardiologicalCase] ([CardiologicalCaseId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalCaseDrug_Drug] FOREIGN KEY ([DrugId]) REFERENCES [dbo].[Drug] ([DrugId]),
    CONSTRAINT [FK_CardiologicalCaseDrug_DrugFrequency] FOREIGN KEY ([DrugFrequencyId]) REFERENCES [dbo].[DrugFrequency] ([DrugFrequencyId])
);


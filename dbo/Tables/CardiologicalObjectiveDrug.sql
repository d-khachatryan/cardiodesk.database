CREATE TABLE [dbo].[CardiologicalObjectiveDrug] (
    [CardiologicalObjectiveDrugId] INT IDENTITY (1, 1) NOT NULL,
    [CardiologicalObjectiveId]     INT NULL,
    [DrugId]                       INT NULL,
    [DrugFrequencyId]              INT NULL,
    [Duration]                     INT NULL,
    CONSTRAINT [PK_CardiologicalObjectiveDrug] PRIMARY KEY CLUSTERED ([CardiologicalObjectiveDrugId] ASC),
    CONSTRAINT [FK_CardiologicalObjectiveDrug_CardiologicalObjective] FOREIGN KEY ([CardiologicalObjectiveId]) REFERENCES [dbo].[CardiologicalObjective] ([CardiologicalObjectiveId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalObjectiveDrug_Drug] FOREIGN KEY ([DrugId]) REFERENCES [dbo].[Drug] ([DrugId]),
    CONSTRAINT [FK_CardiologicalObjectiveDrug_DrugFrequency] FOREIGN KEY ([DrugFrequencyId]) REFERENCES [dbo].[DrugFrequency] ([DrugFrequencyId])
);


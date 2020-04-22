CREATE TABLE [dbo].[CardiologicalSurgeryDrug] (
    [CardiologicalSurgeryDrugId] INT IDENTITY (1, 1) NOT NULL,
    [CardiologicalSurgeryId]     INT NULL,
    [DrugId]                     INT NULL,
    [DrugFrequencyId]            INT NULL,
    [Duration]                   INT NULL,
    CONSTRAINT [PK_CardiologicalSurgeryDrug] PRIMARY KEY CLUSTERED ([CardiologicalSurgeryDrugId] ASC),
    CONSTRAINT [FK_CardiologicalSurgeryDrug_CardiologicalSurgery] FOREIGN KEY ([CardiologicalSurgeryId]) REFERENCES [dbo].[CardiologicalSurgery] ([CardiologicalSurgeryId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalSurgeryDrug_Drug] FOREIGN KEY ([DrugId]) REFERENCES [dbo].[Drug] ([DrugId]),
    CONSTRAINT [FK_CardiologicalSurgeryDrug_DrugFrequency] FOREIGN KEY ([DrugFrequencyId]) REFERENCES [dbo].[DrugFrequency] ([DrugFrequencyId])
);


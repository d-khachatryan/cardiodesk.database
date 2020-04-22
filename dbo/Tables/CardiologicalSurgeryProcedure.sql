CREATE TABLE [dbo].[CardiologicalSurgeryProcedure] (
    [CardiologicalSurgeryProcedureId] INT            IDENTITY (1, 1) NOT NULL,
    [CardiologicalSurgeryId]          INT            NULL,
    [MedicalProcedureId]              INT            NULL,
    [Comment]                         NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_CardiologicalSurgeryProcedure] PRIMARY KEY CLUSTERED ([CardiologicalSurgeryProcedureId] ASC),
    CONSTRAINT [FK_CardiologicalSurgeryProcedure_CardiologicalSurgery] FOREIGN KEY ([CardiologicalSurgeryId]) REFERENCES [dbo].[CardiologicalSurgery] ([CardiologicalSurgeryId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalSurgeryProcedure_MedicalProcedure] FOREIGN KEY ([MedicalProcedureId]) REFERENCES [dbo].[MedicalProcedure] ([MedicalProcedureId])
);


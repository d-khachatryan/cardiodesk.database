CREATE TABLE [dbo].[MedicalProcedure] (
    [MedicalProcedureId]   INT           IDENTITY (1, 1) NOT NULL,
    [MedicalProcedureName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([MedicalProcedureId] ASC)
);


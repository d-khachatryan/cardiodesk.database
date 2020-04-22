CREATE TABLE [dbo].[TreatmentType] (
    [TreatmentTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [TreatmentTypeName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([TreatmentTypeId] ASC)
);


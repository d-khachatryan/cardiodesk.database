CREATE TABLE [dbo].[ImmunologicalStatus] (
    [ImmunologicalStatusId]   INT           IDENTITY (1, 1) NOT NULL,
    [ImmunologicalStatusName] NVARCHAR (50) NULL,
    CONSTRAINT [PK_ImmunologicalStatus] PRIMARY KEY CLUSTERED ([ImmunologicalStatusId] ASC)
);


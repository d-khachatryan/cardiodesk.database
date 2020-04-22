CREATE TABLE [dbo].[CardiologicalSurgeryValve] (
    [CardiologicalSurgeryValveId] INT            IDENTITY (1, 1) NOT NULL,
    [CardiologicalSurgeryId]      INT            NULL,
    [ValveSurgeryTypeId]          INT            NULL,
    [ProthesisId]                 INT            NULL,
    [ImplantId]                   INT            NULL,
    [ValveTypeId]                 INT            NULL,
    [Comment]                     NVARCHAR (MAX) NULL,
    [ImplantSizeId]               INT            NULL,
    CONSTRAINT [PK_CardiologicalSurgeryValve] PRIMARY KEY CLUSTERED ([CardiologicalSurgeryValveId] ASC),
    CONSTRAINT [FK_CardiologicalSurgeryValve_CardiologicalSurgery] FOREIGN KEY ([CardiologicalSurgeryId]) REFERENCES [dbo].[CardiologicalSurgery] ([CardiologicalSurgeryId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalSurgeryValve_Implant] FOREIGN KEY ([ImplantId]) REFERENCES [dbo].[Implant] ([ImplantId]),
    CONSTRAINT [FK_CardiologicalSurgeryValve_ImplantSize] FOREIGN KEY ([ImplantSizeId]) REFERENCES [dbo].[ImplantSize] ([ImplantSizeId]),
    CONSTRAINT [FK_CardiologicalSurgeryValve_Prothesis] FOREIGN KEY ([ProthesisId]) REFERENCES [dbo].[Prothesis] ([ProthesisId]),
    CONSTRAINT [FK_CardiologicalSurgeryValve_ValveSurgeryType] FOREIGN KEY ([ValveSurgeryTypeId]) REFERENCES [dbo].[ValveSurgeryType] ([ValveSurgeryTypeId]),
    CONSTRAINT [FK_CardiologicalSurgeryValve_ValveType] FOREIGN KEY ([ValveTypeId]) REFERENCES [dbo].[ValveType] ([ValveTypeId])
);


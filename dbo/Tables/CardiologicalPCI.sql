CREATE TABLE [dbo].[CardiologicalPCI] (
    [CardiologicalPCIId]   INT            IDENTITY (1, 1) NOT NULL,
    [ResidentId]           INT            NULL,
    [CardiologicalPCIDate] DATE           NULL,
    [PhysicianId]          INT            NULL,
    [Comment]              NVARCHAR (MAX) NULL,
    [PCIMovieURL]          NVARCHAR (MAX) NULL,
    [PCIImageURL]          NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_CardiologicalPCI] PRIMARY KEY CLUSTERED ([CardiologicalPCIId] ASC),
    CONSTRAINT [FK_CardiologicalPCI_Physician] FOREIGN KEY ([PhysicianId]) REFERENCES [dbo].[Physician] ([PhysicianId]),
    CONSTRAINT [FK_CardiologicalPCI_Resident] FOREIGN KEY ([ResidentId]) REFERENCES [dbo].[Resident] ([ResidentId]) ON DELETE CASCADE
);


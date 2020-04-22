CREATE TABLE [dbo].[CardiologicalEchoCGWall] (
    [CardiologicalEchoCGWallId] INT IDENTITY (1, 1) NOT NULL,
    [CardiologicalEchoCGId]     INT NULL,
    [EchoCGZoneId]              INT NULL,
    [ContractilityId]           INT NULL,
    CONSTRAINT [PK_CardiologicalEchoCGWall] PRIMARY KEY CLUSTERED ([CardiologicalEchoCGWallId] ASC),
    CONSTRAINT [FK_CardiologicalEchoCGWall_CardiologicalEchoCG] FOREIGN KEY ([CardiologicalEchoCGId]) REFERENCES [dbo].[CardiologicalEchoCG] ([CardiologicalEchoCGId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalEchoCGWall_Contractility] FOREIGN KEY ([ContractilityId]) REFERENCES [dbo].[Contractility] ([ContractilityId]),
    CONSTRAINT [FK_CardiologicalEchoCGWall_EchoCGZone] FOREIGN KEY ([EchoCGZoneId]) REFERENCES [dbo].[EchoCGZone] ([EchoCGZoneId])
);


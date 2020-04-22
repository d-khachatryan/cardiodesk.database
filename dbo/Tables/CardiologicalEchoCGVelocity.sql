CREATE TABLE [dbo].[CardiologicalEchoCGVelocity] (
    [CardiologicalEchoCGVelocityId] INT        IDENTITY (1, 1) NOT NULL,
    [CardiologicalEchoCGId]         INT        NULL,
    [ValveId]                       INT        NULL,
    [Velocity]                      FLOAT (53) NULL,
    [StenosisId]                    INT        NULL,
    [Area]                          FLOAT (53) NULL,
    [Gradient]                      INT        NULL,
    [InsufficiencyId]               INT        NULL,
    CONSTRAINT [PK_CardiologicalEchoCGVelocity] PRIMARY KEY CLUSTERED ([CardiologicalEchoCGVelocityId] ASC),
    CONSTRAINT [FK_CardiologicalEchoCGVelocity_CardiologicalEchoCG] FOREIGN KEY ([CardiologicalEchoCGId]) REFERENCES [dbo].[CardiologicalEchoCG] ([CardiologicalEchoCGId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalEchoCGVelocity_Insufficiency] FOREIGN KEY ([InsufficiencyId]) REFERENCES [dbo].[Insufficiency] ([InsufficiencyId]),
    CONSTRAINT [FK_CardiologicalEchoCGVelocity_Stenosis] FOREIGN KEY ([StenosisId]) REFERENCES [dbo].[Stenosis] ([StenosisId]),
    CONSTRAINT [FK_CardiologicalEchoCGVelocity_Valve] FOREIGN KEY ([ValveId]) REFERENCES [dbo].[Valve] ([ValveId])
);


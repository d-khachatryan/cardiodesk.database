CREATE TABLE [dbo].[CardiologicalTreadmil] (
    [CardiologicalTreadmilId]   INT            IDENTITY (1, 1) NOT NULL,
    [ResidentId]                INT            NULL,
    [CardiologicalTreadmilDate] DATE           NULL,
    [TreadmilProtocolId]        INT            NULL,
    [METSAchieved]              FLOAT (53)     NULL,
    [TreadmilResultid]          INT            NULL,
    [Comment]                   NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_CardiologicalTreadmil] PRIMARY KEY CLUSTERED ([CardiologicalTreadmilId] ASC),
    CONSTRAINT [FK_CardiologicalTreadmil_Resident] FOREIGN KEY ([ResidentId]) REFERENCES [dbo].[Resident] ([ResidentId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalTreadmil_TreadmilProtocol] FOREIGN KEY ([TreadmilProtocolId]) REFERENCES [dbo].[TreadmilProtocol] ([TreadmilProtocolId]),
    CONSTRAINT [FK_CardiologicalTreadmil_TreadmilResult] FOREIGN KEY ([TreadmilResultid]) REFERENCES [dbo].[TreadmilResult] ([TreadmilResultId])
);


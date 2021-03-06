﻿CREATE TABLE [dbo].[CardiologicalEchoCG] (
    [CardiologicalEchoCGId]         INT            IDENTITY (1, 1) NOT NULL,
    [ResidentId]                    INT            NULL,
    [CardiologicalEchoCGDate]       DATE           NULL,
    [AOD]                           FLOAT            NULL,
    [LAD]                           FLOAT            NULL,
    [RVDD]                          FLOAT            NULL,
    [LVSD]                          FLOAT            NULL,
    [LVDD]                          FLOAT            NULL,
    [LVPW]                          FLOAT            NULL,
    [LVSV]                          FLOAT            NULL,
    [LVDV]                          FLOAT            NULL,
    [IVSW]                          FLOAT            NULL,
    [SV]                            FLOAT            NULL,
    [EF]                            INT            NULL,
    [PAACTET]                       FLOAT (53)     NULL,
    [MenaPAP]                       FLOAT            NULL,
    [PeakPAP]                       FLOAT            NULL,
    [PericardialAnteriorSeparation] FLOAT            NULL,
    [Comment]                       NVARCHAR (MAX) NULL,
    [CardiologicalEchoCGMoviePath]  NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_CardiologicalEchoCG] PRIMARY KEY CLUSTERED ([CardiologicalEchoCGId] ASC),
    CONSTRAINT [FK_CardiologicalEchoCG_Resident] FOREIGN KEY ([ResidentId]) REFERENCES [dbo].[Resident] ([ResidentId]) ON DELETE CASCADE
);


CREATE TABLE [dbo].[CardiologicalSurgeryComplication] (
    [CardiologicalSurgeryComplicationId] INT IDENTITY (1, 1) NOT NULL,
    [CardiologicalSurgeryId]             INT NULL,
    [ComplicationId]                     INT NULL,
    CONSTRAINT [PK_CardiologicalSurgeryComplication] PRIMARY KEY CLUSTERED ([CardiologicalSurgeryComplicationId] ASC),
    CONSTRAINT [FK_CardiologicalSurgeryComplication_CardiologicalSurgery] FOREIGN KEY ([CardiologicalSurgeryId]) REFERENCES [dbo].[CardiologicalSurgery] ([CardiologicalSurgeryId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalSurgeryComplication_Complication] FOREIGN KEY ([ComplicationId]) REFERENCES [dbo].[Complication] ([ComplicationId])
);


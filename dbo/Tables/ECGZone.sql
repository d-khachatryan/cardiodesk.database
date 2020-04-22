CREATE TABLE [dbo].[ECGZone] (
    [ECGZoneId]   INT           IDENTITY (1, 1) NOT NULL,
    [ECGZoneName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([ECGZoneId] ASC)
);


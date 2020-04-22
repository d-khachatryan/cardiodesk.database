CREATE TABLE [dbo].[TreadmilProtocol] (
    [TreadmilProtocolId]   INT           IDENTITY (1, 1) NOT NULL,
    [TreadmilProtocolName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([TreadmilProtocolId] ASC)
);


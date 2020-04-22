CREATE TABLE [dbo].[HeartMurmurType] (
    [HeartMurmurTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [HeartMurmurTypeName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([HeartMurmurTypeId] ASC)
);


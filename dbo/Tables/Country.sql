CREATE TABLE [dbo].[Country] (
    [CountryId]   INT           IDENTITY (1, 1) NOT NULL,
    [CountryName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([CountryId] ASC)
);


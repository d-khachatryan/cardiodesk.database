CREATE TABLE [dbo].[Cadiomyopathy] (
    [CadiomyopathyId]   INT           IDENTITY (1, 1) NOT NULL,
    [CadiomyopathyName] NVARCHAR (50) NULL,
    CONSTRAINT [PK_Cadiomyopathy] PRIMARY KEY CLUSTERED ([CadiomyopathyId] ASC)
);


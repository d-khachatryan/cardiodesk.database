CREATE TABLE [dbo].[DrugElutionType] (
    [DrugElutionTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [DrugElutionTypeName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([DrugElutionTypeId] ASC)
);


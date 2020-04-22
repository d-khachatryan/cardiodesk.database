CREATE TABLE [dbo].[Drug] (
    [DrugId]   INT           IDENTITY (1, 1) NOT NULL,
    [DrugName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([DrugId] ASC)
);


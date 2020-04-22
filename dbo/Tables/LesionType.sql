CREATE TABLE [dbo].[LesionType] (
    [LesionTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [LesionTypeName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([LesionTypeId] ASC)
);


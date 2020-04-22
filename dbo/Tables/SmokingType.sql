CREATE TABLE [dbo].[SmokingType] (
    [SmokingTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [SmokingTypeName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([SmokingTypeId] ASC)
);


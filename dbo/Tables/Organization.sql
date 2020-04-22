CREATE TABLE [dbo].[Organization] (
    [OrganizationId]   INT           IDENTITY (1, 1) NOT NULL,
    [OrganizationName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([OrganizationId] ASC)
);


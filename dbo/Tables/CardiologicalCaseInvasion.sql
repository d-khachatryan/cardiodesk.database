CREATE TABLE [dbo].[CardiologicalCaseInvasion] (
    [CardiologicalCaseInvasionId] INT  IDENTITY (1, 1) NOT NULL,
    [CardiologicalCaseId]         INT  NULL,
    [InvasionId]                  INT  NULL,
    [InvasionDate]                DATE NULL,
    [OrganizationId]              INT  NULL,
    CONSTRAINT [PK_CardiologicalCaseInvasion] PRIMARY KEY CLUSTERED ([CardiologicalCaseInvasionId] ASC),
    CONSTRAINT [FK_CardiologicalCaseInvasion_CardiologicalCase] FOREIGN KEY ([CardiologicalCaseId]) REFERENCES [dbo].[CardiologicalCase] ([CardiologicalCaseId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalCaseInvasion_Invasion] FOREIGN KEY ([InvasionId]) REFERENCES [dbo].[Invasion] ([InvasionId]),
    CONSTRAINT [FK_CardiologicalCaseInvasion_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


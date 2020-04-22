CREATE TABLE [dbo].[CardiologicalCaseComplian] (
    [CardiologicalCaseComplianId] INT IDENTITY (1, 1) NOT NULL,
    [CardiologicalCaseId]         INT NULL,
    [ComplianId]                  INT NULL,
    CONSTRAINT [PK_CardiologicalCaseComplian] PRIMARY KEY CLUSTERED ([CardiologicalCaseComplianId] ASC),
    CONSTRAINT [FK_CardiologicalCaseComplian_CardiologicalCase] FOREIGN KEY ([CardiologicalCaseId]) REFERENCES [dbo].[CardiologicalCase] ([CardiologicalCaseId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalCaseComplian_Complian] FOREIGN KEY ([ComplianId]) REFERENCES [dbo].[Complian] ([ComplianId])
);


CREATE TABLE [dbo].[DeathCause] (
    [DeathCauseId]   INT           IDENTITY (1, 1) NOT NULL,
    [DeathCauseName] NVARCHAR (50) NULL,
    CONSTRAINT [PK_DeathCause] PRIMARY KEY CLUSTERED ([DeathCauseId] ASC)
);


CREATE TABLE [dbo].[MovementStatus] (
    [MovementStatusId]   INT           IDENTITY (1, 1) NOT NULL,
    [MovementStatusName] NVARCHAR (50) NULL,
    CONSTRAINT [PK_MovementStatus] PRIMARY KEY CLUSTERED ([MovementStatusId] ASC)
);


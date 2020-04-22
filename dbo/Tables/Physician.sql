CREATE TABLE [dbo].[Physician] (
    [PhysicianId]   INT           IDENTITY (1, 1) NOT NULL,
    [PhysicianName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([PhysicianId] ASC)
);


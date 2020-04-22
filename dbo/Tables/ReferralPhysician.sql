CREATE TABLE [dbo].[ReferralPhysician] (
    [ReferralPhysicianId]   INT           IDENTITY (1, 1) NOT NULL,
    [ReferralPhysicianName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([ReferralPhysicianId] ASC)
);


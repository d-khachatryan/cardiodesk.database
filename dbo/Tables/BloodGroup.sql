CREATE TABLE [dbo].[BloodGroup] (
    [BloodGroupId]   INT           IDENTITY (1, 1) NOT NULL,
    [BloodGroupName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([BloodGroupId] ASC)
);


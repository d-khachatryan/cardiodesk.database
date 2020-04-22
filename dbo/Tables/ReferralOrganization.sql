CREATE TABLE [dbo].[ReferralOrganization] (
    [ReferralOrganizationId]   INT           IDENTITY (1, 1) NOT NULL,
    [ReferralOrganizationName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([ReferralOrganizationId] ASC)
);


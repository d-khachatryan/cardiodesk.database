﻿CREATE TABLE [dbo].[Resident] (
    [ResidentId]             INT            IDENTITY (1, 1) NOT NULL,
    [PatientId]              INT            NULL,
    [ResidentLastName]       NVARCHAR (50)  NULL,
    [ResidentFirstName]      NVARCHAR (50)  NULL,
    [ResidentPatronymicName] NVARCHAR (50)  NULL,
    [BirthDate]              DATE           NULL,
    [Age]                    INT            NULL,
    [PassportNumber]         NVARCHAR (50)  NULL,
    [GenderId]               INT            NULL,
    [ChildrenCount]          INT            NULL,
    [CountryId]              INT            NULL,
    [RegionId]               INT            NULL,
    [CommunityId]            INT            NULL,
    [Location]               NVARCHAR (255) NULL,
    [HomePhone]              NVARCHAR (50)  NULL,
    [ProfessionId]           INT            NULL,
    [WorkPhone]              NVARCHAR (50)  NULL,
    [RelativeName]           NVARCHAR (50)  NULL,
    [RelativeStatusId]       INT            NULL,
    [RelativePhone]          NVARCHAR (50)  NULL,
    [ReferralPhysicianId]    INT            NULL,
    [ReferralOrganizationId] INT            NULL,
    CONSTRAINT [PK_Resident] PRIMARY KEY CLUSTERED ([ResidentId] ASC),
    CONSTRAINT [FK_Resident_Community] FOREIGN KEY ([CommunityId]) REFERENCES [dbo].[Community] ([CommunityId]),
    CONSTRAINT [FK_Resident_Country] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([CountryId]),
    CONSTRAINT [FK_Resident_Gender] FOREIGN KEY ([GenderId]) REFERENCES [dbo].[Gender] ([GenderId]),
    CONSTRAINT [FK_Resident_Profession] FOREIGN KEY ([ProfessionId]) REFERENCES [dbo].[Profession] ([ProfessionId]),
    CONSTRAINT [FK_Resident_ReferralOrganization] FOREIGN KEY ([ReferralOrganizationId]) REFERENCES [dbo].[ReferralOrganization] ([ReferralOrganizationId]),
    CONSTRAINT [FK_Resident_ReferralPhysician] FOREIGN KEY ([ReferralPhysicianId]) REFERENCES [dbo].[ReferralPhysician] ([ReferralPhysicianId]),
    CONSTRAINT [FK_Resident_Region] FOREIGN KEY ([RegionId]) REFERENCES [dbo].[Region] ([RegionId]),
    CONSTRAINT [FK_Resident_RelativeStatus] FOREIGN KEY ([RelativeStatusId]) REFERENCES [dbo].[RelativeStatus] ([RelativeStatusId])
);


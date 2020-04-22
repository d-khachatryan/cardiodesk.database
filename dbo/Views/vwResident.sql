
CREATE VIEW [dbo].[vwResident]
AS
SELECT     dbo.Resident.ResidentId, dbo.Resident.PatientId, dbo.Resident.ResidentLastName, dbo.Resident.ResidentFirstName, dbo.Resident.ResidentPatronymicName, dbo.Resident.BirthDate, 
                      dbo.Resident.Age, dbo.Resident.PassportNumber, dbo.Resident.ChildrenCount, dbo.Resident.CountryId, dbo.Country.CountryName, dbo.Resident.RegionId, dbo.Region.RegionName, 
                      dbo.Resident.CommunityId, dbo.Community.CommunityName, dbo.Resident.Location, dbo.Resident.HomePhone, dbo.Resident.ProfessionId, dbo.Profession.ProfessionName, 
                      dbo.Resident.WorkPhone, dbo.Resident.RelativeName, dbo.Resident.RelativeStatusId, dbo.RelativeStatus.RelativeStatusName, dbo.Resident.RelativePhone, dbo.Resident.ReferralPhysicianId, 
                      dbo.ReferralPhysician.ReferralPhysicianName, dbo.Resident.ReferralOrganizationId, dbo.ReferralOrganization.ReferralOrganizationName, dbo.Resident.GenderId, dbo.Gender.GenderName, 
                      ISNULL(STR(dbo.Resident.PatientId), N'-') + N' - ' + ISNULL(dbo.Resident.ResidentFirstName, N'-') + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') 
                      + N' ' + ISNULL(dbo.Resident.ResidentPatronymicName, N'-')  + N' ' + ISNULL(CONVERT(VARCHAR(10),dbo.Resident.BirthDate,110), N'-') AS ResidentName
FROM         dbo.Resident LEFT OUTER JOIN
                      dbo.Gender ON dbo.Resident.GenderId = dbo.Gender.GenderId LEFT OUTER JOIN
                      dbo.ReferralOrganization ON dbo.Resident.ReferralOrganizationId = dbo.ReferralOrganization.ReferralOrganizationId LEFT OUTER JOIN
                      dbo.ReferralPhysician ON dbo.Resident.ReferralPhysicianId = dbo.ReferralPhysician.ReferralPhysicianId LEFT OUTER JOIN
                      dbo.RelativeStatus ON dbo.Resident.RelativeStatusId = dbo.RelativeStatus.RelativeStatusId LEFT OUTER JOIN
                      dbo.Profession ON dbo.Resident.ProfessionId = dbo.Profession.ProfessionId LEFT OUTER JOIN
                      dbo.Community ON dbo.Resident.CommunityId = dbo.Community.CommunityId LEFT OUTER JOIN
                      dbo.Region ON dbo.Resident.RegionId = dbo.Region.RegionId LEFT OUTER JOIN
                      dbo.Country ON dbo.Resident.CountryId = dbo.Country.CountryId


GO

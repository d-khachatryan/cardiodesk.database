CREATE VIEW dbo.vwCardiologicalCaseInvasion
AS
SELECT     dbo.CardiologicalCaseInvasion.CardiologicalCaseInvasionId, dbo.CardiologicalCaseInvasion.CardiologicalCaseId, dbo.Invasion.InvasionName, dbo.CardiologicalCaseInvasion.InvasionId, 
                      dbo.CardiologicalCaseInvasion.InvasionDate, dbo.CardiologicalCaseInvasion.OrganizationId, dbo.Organization.OrganizationName
FROM         dbo.CardiologicalCaseInvasion LEFT OUTER JOIN
                      dbo.Organization ON dbo.CardiologicalCaseInvasion.OrganizationId = dbo.Organization.OrganizationId LEFT OUTER JOIN
                      dbo.Invasion ON dbo.CardiologicalCaseInvasion.InvasionId = dbo.Invasion.InvasionId

GO


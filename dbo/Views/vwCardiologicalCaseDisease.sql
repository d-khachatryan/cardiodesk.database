CREATE VIEW dbo.vwCardiologicalCaseDisease
AS
SELECT     dbo.CardiologicalCaseDisease.CardiologicalCaseDiseaseId, dbo.CardiologicalCaseDisease.CardiologicalCaseId, dbo.CardiologicalCaseDisease.DiseaseId, dbo.Disease.DiseaseName, 
                      dbo.CardiologicalCaseDisease.DiseaseDate, dbo.CardiologicalCaseDisease.OrganizationId, dbo.Organization.OrganizationName
FROM         dbo.CardiologicalCaseDisease LEFT OUTER JOIN
                      dbo.Organization ON dbo.CardiologicalCaseDisease.OrganizationId = dbo.Organization.OrganizationId LEFT OUTER JOIN
                      dbo.Disease ON dbo.CardiologicalCaseDisease.DiseaseId = dbo.Disease.DiseaseId

GO


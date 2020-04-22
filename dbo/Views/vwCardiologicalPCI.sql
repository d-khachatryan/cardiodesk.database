CREATE VIEW dbo.vwCardiologicalPCI
AS
SELECT     dbo.CardiologicalPCI.CardiologicalPCIId, dbo.CardiologicalPCI.ResidentId, dbo.Resident.PatientId, dbo.Resident.ResidentLastName, dbo.Resident.ResidentFirstName, 
                      dbo.Resident.ResidentPatronymicName, dbo.Resident.BirthDate, dbo.CardiologicalPCI.CardiologicalPCIDate, dbo.CardiologicalPCI.PhysicianId, dbo.Physician.PhysicianName, 
                      dbo.CardiologicalPCI.Comment, dbo.CardiologicalPCI.PCIMovieURL, dbo.CardiologicalPCI.PCIImageURL, ISNULL(dbo.Resident.ResidentFirstName, N'-') 
                      + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') + N' ' + LEFT(ISNULL(dbo.Resident.ResidentPatronymicName, N'-'), 1) AS ResidentName
FROM         dbo.CardiologicalPCI LEFT OUTER JOIN
                      dbo.Physician ON dbo.CardiologicalPCI.PhysicianId = dbo.Physician.PhysicianId LEFT OUTER JOIN
                      dbo.Resident ON dbo.CardiologicalPCI.ResidentId = dbo.Resident.ResidentId

GO

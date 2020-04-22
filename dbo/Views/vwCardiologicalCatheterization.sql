CREATE VIEW dbo.vwCardiologicalCatheterization
AS
SELECT     dbo.CardiologicalCatheterization.CardiologicalCatheterizationId, dbo.CardiologicalCatheterization.ResidentId, dbo.Resident.PatientId, dbo.Resident.ResidentLastName, 
                      dbo.Resident.ResidentFirstName, dbo.Resident.ResidentPatronymicName, dbo.Resident.BirthDate, dbo.CardiologicalCatheterization.CardiologicalCatheterizationDate, 
                      dbo.CardiologicalCatheterization.DominanceTypeId, dbo.DominanceType.DominanceTypeName, dbo.CardiologicalCatheterization.LM, dbo.CardiologicalCatheterization.LMStenosis, 
                      dbo.CardiologicalCatheterization.LAD1, dbo.CardiologicalCatheterization.LAD1Stenosis, dbo.CardiologicalCatheterization.LAD2, dbo.CardiologicalCatheterization.LAD2Stenosis, 
                      dbo.CardiologicalCatheterization.LAD3, dbo.CardiologicalCatheterization.LAD3Stenosis, dbo.CardiologicalCatheterization.Diag1, dbo.CardiologicalCatheterization.Diag1Stenosis, 
                      dbo.CardiologicalCatheterization.Diag2, dbo.CardiologicalCatheterization.Diag2Stenosis, dbo.CardiologicalCatheterization.Cx1, dbo.CardiologicalCatheterization.Cx1Stenosis, 
                      dbo.CardiologicalCatheterization.Cx2, dbo.CardiologicalCatheterization.Cx2Stenosis, dbo.CardiologicalCatheterization.Cx3, dbo.CardiologicalCatheterization.Cx3Stenosis, 
                      dbo.CardiologicalCatheterization.Rm, dbo.CardiologicalCatheterization.RmStenosis, dbo.CardiologicalCatheterization.OM1, dbo.CardiologicalCatheterization.OM1Stenosis, 
                      dbo.CardiologicalCatheterization.OM2, dbo.CardiologicalCatheterization.OM2Stenosis, dbo.CardiologicalCatheterization.OM3, dbo.CardiologicalCatheterization.OM3Stenosis, 
                      dbo.CardiologicalCatheterization.OM4, dbo.CardiologicalCatheterization.OM4Stenosis, dbo.CardiologicalCatheterization.RCA1, dbo.CardiologicalCatheterization.RCA1Stenosis, 
                      dbo.CardiologicalCatheterization.RCA2, dbo.CardiologicalCatheterization.RCA2Stenosis, dbo.CardiologicalCatheterization.RCA3, dbo.CardiologicalCatheterization.RCA3Stenosis, 
                      dbo.CardiologicalCatheterization.PDA, dbo.CardiologicalCatheterization.PDAStenosis, dbo.CardiologicalCatheterization.PL1, dbo.CardiologicalCatheterization.PL1Stenosis, 
                      dbo.CardiologicalCatheterization.PL2, dbo.CardiologicalCatheterization.PL2Stenosis, dbo.CardiologicalCatheterization.LVGraphy, dbo.CardiologicalCatheterization.LVEDP, 
                      dbo.CardiologicalCatheterization.LVEDV, dbo.CardiologicalCatheterization.LVESV, dbo.CardiologicalCatheterization.LVEF, dbo.CardiologicalCatheterization.PhysicianId, 
                      dbo.Physician.PhysicianName, dbo.CardiologicalCatheterization.CatheterizationMovieURL, dbo.CardiologicalCatheterization.CatheterizationImageURL, dbo.CardiologicalCatheterization.Comment, 
                      ISNULL(dbo.Resident.ResidentFirstName, N'-') + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') + N' ' + LEFT(ISNULL(dbo.Resident.ResidentPatronymicName, N'-'), 1) AS ResidentName
FROM         dbo.CardiologicalCatheterization LEFT OUTER JOIN
                      dbo.Physician ON dbo.CardiologicalCatheterization.PhysicianId = dbo.Physician.PhysicianId LEFT OUTER JOIN
                      dbo.DominanceType ON dbo.CardiologicalCatheterization.DominanceTypeId = dbo.DominanceType.DominanceTypeId LEFT OUTER JOIN
                      dbo.Resident ON dbo.CardiologicalCatheterization.ResidentId = dbo.Resident.ResidentId

GO


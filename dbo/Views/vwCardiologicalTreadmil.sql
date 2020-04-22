CREATE VIEW dbo.vwCardiologicalTreadmil
AS
SELECT     dbo.CardiologicalTreadmil.CardiologicalTreadmilId, dbo.CardiologicalTreadmil.ResidentId, dbo.CardiologicalTreadmil.CardiologicalTreadmilDate, dbo.CardiologicalTreadmil.TreadmilProtocolId, 
                      dbo.TreadmilProtocol.TreadmilProtocolName, dbo.CardiologicalTreadmil.METSAchieved, dbo.CardiologicalTreadmil.TreadmilResultid, dbo.TreadmilResult.TreadmilResultName, 
                      dbo.CardiologicalTreadmil.Comment, dbo.Resident.ResidentLastName, dbo.Resident.ResidentFirstName, dbo.Resident.ResidentPatronymicName, dbo.Resident.BirthDate, dbo.Resident.PatientId, 
                      ISNULL(dbo.Resident.ResidentFirstName, N'-') + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') + N' ' + LEFT(ISNULL(dbo.Resident.ResidentPatronymicName, N'-'), 1) AS ResidentName
FROM         dbo.CardiologicalTreadmil LEFT OUTER JOIN
                      dbo.Resident ON dbo.CardiologicalTreadmil.ResidentId = dbo.Resident.ResidentId LEFT OUTER JOIN
                      dbo.TreadmilResult ON dbo.CardiologicalTreadmil.TreadmilResultid = dbo.TreadmilResult.TreadmilResultId LEFT OUTER JOIN
                      dbo.TreadmilProtocol ON dbo.CardiologicalTreadmil.TreadmilProtocolId = dbo.TreadmilProtocol.TreadmilProtocolId

GO

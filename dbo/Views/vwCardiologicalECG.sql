CREATE VIEW dbo.vwCardiologicalECG
AS
SELECT     dbo.CardiologicalECG.CardiologicalECGId, dbo.CardiologicalECG.ResidentId, dbo.Resident.PatientId, dbo.Resident.ResidentLastName, dbo.Resident.ResidentFirstName, 
                      dbo.Resident.ResidentPatronymicName, dbo.CardiologicalECG.CardiologicalECGDate, dbo.CardiologicalECG.HR, dbo.CardiologicalECG.RhythmTypeID, dbo.RhythmType.RhythmTypeName, 
                      dbo.CardiologicalECG.AxisDegree, dbo.CardiologicalECG.PQ, dbo.CardiologicalECG.QT, dbo.Resident.BirthDate, dbo.CardiologicalECG.LVHId, VH_1.VHName, dbo.CardiologicalECG.RVHId, 
                      dbo.VH.VHName AS RVHName, dbo.CardiologicalECG.ZoneIshemiaId, ECGZone_1.ECGZoneName AS ZoneName, dbo.CardiologicalECG.ZoneInfarctionId, 
                      dbo.ECGZone.ECGZoneName AS ZoneName1, dbo.CardiologicalECG.LaunId, dbo.Laun.LaunName, dbo.CardiologicalECG.PAC, dbo.CardiologicalECG.ConductionDisturbanceId, 
                      dbo.ConductionDisturbance.ConductionDisturbanceName, dbo.CardiologicalECG.BBBId, dbo.CardiologicalECG.Comment, ISNULL(dbo.Resident.ResidentFirstName, N'-') 
                      + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') + N' ' + LEFT(ISNULL(dbo.Resident.ResidentPatronymicName, N'-'), 1) AS ResidentName
FROM         dbo.CardiologicalECG LEFT OUTER JOIN
                      dbo.BBB ON dbo.CardiologicalECG.BBBId = dbo.BBB.BBBId LEFT OUTER JOIN
                      dbo.Laun ON dbo.CardiologicalECG.LaunId = dbo.Laun.LaunId LEFT OUTER JOIN
                      dbo.ConductionDisturbance ON dbo.CardiologicalECG.ConductionDisturbanceId = dbo.ConductionDisturbance.ConductionDisturbanceId LEFT OUTER JOIN
                      dbo.ECGZone ON dbo.CardiologicalECG.ZoneInfarctionId = dbo.ECGZone.ECGZoneId LEFT OUTER JOIN
                      dbo.ECGZone AS ECGZone_1 ON dbo.CardiologicalECG.ZoneIshemiaId = ECGZone_1.ECGZoneId LEFT OUTER JOIN
                      dbo.VH ON dbo.CardiologicalECG.RVHId = dbo.VH.VHId LEFT OUTER JOIN
                      dbo.VH AS VH_1 ON dbo.CardiologicalECG.LVHId = VH_1.VHId LEFT OUTER JOIN
                      dbo.RhythmType ON dbo.CardiologicalECG.RhythmTypeID = dbo.RhythmType.RhythmTypeId LEFT OUTER JOIN
                      dbo.Resident ON dbo.CardiologicalECG.ResidentId = dbo.Resident.ResidentId

GO

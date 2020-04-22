CREATE VIEW dbo.vwCardiologicalCPB
AS
SELECT     dbo.CardiologicalCPB.CardiologicalCPBId, dbo.CardiologicalCPB.ResidentId, dbo.CardiologicalCPB.CPBDate, dbo.CardiologicalCPB.CPBTime, dbo.CardiologicalCPB.SampleTypeId, 
                      dbo.CardiologicalCPB.MAP, dbo.CardiologicalCPB.RectalTemperature, dbo.CardiologicalCPB.ACT, dbo.CardiologicalCPB.FiO2, dbo.CardiologicalCPB.pH, dbo.CardiologicalCPB.pO2, 
                      dbo.CardiologicalCPB.pCO2, dbo.CardiologicalCPB.SO2, dbo.CardiologicalCPB.Ht, dbo.CardiologicalCPB.Hb, dbo.CardiologicalCPB.Na, dbo.CardiologicalCPB.K, dbo.CardiologicalCPB.Cl, 
                      dbo.CardiologicalCPB.Ca, dbo.CardiologicalCPB.Mg, dbo.CardiologicalCPB.BebTypeId, dbo.CardiologicalCPB.BEB, dbo.CardiologicalCPB.HCO3, dbo.CardiologicalCPB.BUN, 
                      dbo.CardiologicalCPB.Lactosa, dbo.CardiologicalCPB.Glucosa, dbo.CardiologicalCPB.IonGap, dbo.BebType.BebTypeName, dbo.SampleType.SampleTypeName, dbo.Resident.ResidentId AS Expr1, 
                      dbo.Resident.PatientId, dbo.Resident.ResidentLastName, dbo.Resident.ResidentFirstName, dbo.Resident.ResidentPatronymicName, dbo.Resident.BirthDate, 
                      ISNULL(dbo.Resident.ResidentFirstName, N'-') + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') + N' ' + LEFT(ISNULL(dbo.Resident.ResidentPatronymicName, N'-'), 1) AS ResidentName
FROM         dbo.CardiologicalCPB LEFT OUTER JOIN
                      dbo.Resident ON dbo.CardiologicalCPB.ResidentId = dbo.Resident.ResidentId LEFT OUTER JOIN
                      dbo.SampleType ON dbo.CardiologicalCPB.SampleTypeId = dbo.SampleType.SampleTypeId LEFT OUTER JOIN
                      dbo.BebType ON dbo.CardiologicalCPB.BebTypeId = dbo.BebType.BebTypeId

GO


CREATE VIEW dbo.vwCardiologicalEchoCG
AS
SELECT     dbo.CardiologicalEchoCG.CardiologicalEchoCGId, dbo.CardiologicalEchoCG.ResidentId, dbo.Resident.PatientId, dbo.Resident.ResidentLastName, dbo.Resident.ResidentFirstName, 
                      dbo.Resident.ResidentPatronymicName, dbo.Resident.BirthDate, dbo.CardiologicalEchoCG.CardiologicalEchoCGDate, dbo.CardiologicalEchoCG.AOD, dbo.CardiologicalEchoCG.LAD, 
                      dbo.CardiologicalEchoCG.RVDD, dbo.CardiologicalEchoCG.LVSD, dbo.CardiologicalEchoCG.LVDD, dbo.CardiologicalEchoCG.LVPW, dbo.CardiologicalEchoCG.LVSV, dbo.CardiologicalEchoCG.LVDV, 
                      dbo.CardiologicalEchoCG.IVSW, dbo.CardiologicalEchoCG.SV, dbo.CardiologicalEchoCG.EF, dbo.CardiologicalEchoCG.PAACTET, dbo.CardiologicalEchoCG.MenaPAP, 
                      dbo.CardiologicalEchoCG.PeakPAP, dbo.CardiologicalEchoCG.PericardialAnteriorSeparation, dbo.CardiologicalEchoCG.Comment, dbo.CardiologicalEchoCG.CardiologicalEchoCGMoviePath, 
                      ISNULL(dbo.Resident.ResidentFirstName, N'-') + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') + N' ' + LEFT(ISNULL(dbo.Resident.ResidentPatronymicName, N'-'), 1) AS ResidentName
FROM         dbo.CardiologicalEchoCG LEFT OUTER JOIN
                      dbo.Resident ON dbo.CardiologicalEchoCG.ResidentId = dbo.Resident.ResidentId

GO


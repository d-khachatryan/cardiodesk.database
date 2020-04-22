CREATE VIEW dbo.vwCardiologicalEchoCGVelocity
AS
SELECT     dbo.CardiologicalEchoCGVelocity.CardiologicalEchoCGVelocityId, dbo.CardiologicalEchoCGVelocity.CardiologicalEchoCGId, dbo.CardiologicalEchoCGVelocity.ValveId, dbo.Valve.ValveName, 
                      dbo.CardiologicalEchoCGVelocity.Velocity, dbo.CardiologicalEchoCGVelocity.StenosisId, dbo.Stenosis.StenosisName, dbo.CardiologicalEchoCGVelocity.Area, 
                      dbo.CardiologicalEchoCGVelocity.Gradient, dbo.CardiologicalEchoCGVelocity.InsufficiencyId, dbo.Insufficiency.InsufficiencyName
FROM         dbo.CardiologicalEchoCGVelocity LEFT OUTER JOIN
                      dbo.Insufficiency ON dbo.CardiologicalEchoCGVelocity.InsufficiencyId = dbo.Insufficiency.InsufficiencyId LEFT OUTER JOIN
                      dbo.Stenosis ON dbo.CardiologicalEchoCGVelocity.StenosisId = dbo.Stenosis.StenosisId LEFT OUTER JOIN
                      dbo.Valve ON dbo.CardiologicalEchoCGVelocity.ValveId = dbo.Valve.ValveId

GO


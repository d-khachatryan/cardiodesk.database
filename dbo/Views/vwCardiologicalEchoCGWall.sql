CREATE VIEW dbo.vwCardiologicalEchoCGWall
AS
SELECT     dbo.CardiologicalEchoCGWall.CardiologicalEchoCGWallId, dbo.CardiologicalEchoCGWall.CardiologicalEchoCGId, dbo.CardiologicalEchoCGWall.EchoCGZoneId, 
                      dbo.EchoCGZone.EchoCGZoneName, dbo.CardiologicalEchoCGWall.ContractilityId, dbo.Contractility.ContractilityName
FROM         dbo.CardiologicalEchoCGWall LEFT OUTER JOIN
                      dbo.Contractility ON dbo.CardiologicalEchoCGWall.ContractilityId = dbo.Contractility.ContractilityId LEFT OUTER JOIN
                      dbo.EchoCGZone ON dbo.CardiologicalEchoCGWall.EchoCGZoneId = dbo.EchoCGZone.EchoCGZoneId

GO


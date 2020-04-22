CREATE VIEW dbo.vwCardiologicalSurgeryValve
AS
SELECT     dbo.CardiologicalSurgeryValve.CardiologicalSurgeryValveId, dbo.CardiologicalSurgeryValve.CardiologicalSurgeryId, dbo.CardiologicalSurgeryValve.ValveSurgeryTypeId, 
                      dbo.ValveSurgeryType.ValveSurgeryTypeName, dbo.CardiologicalSurgeryValve.ProthesisId, dbo.Prothesis.ProthesisName, dbo.CardiologicalSurgeryValve.ImplantId, dbo.Implant.ImplantName, 
                      dbo.CardiologicalSurgeryValve.ValveTypeId, dbo.ValveType.ValveTypeName, dbo.CardiologicalSurgeryValve.Comment, dbo.CardiologicalSurgeryValve.ImplantSizeId, 
                      dbo.ImplantSize.ImplantSizeName
FROM         dbo.CardiologicalSurgeryValve LEFT OUTER JOIN
                      dbo.ImplantSize ON dbo.CardiologicalSurgeryValve.ImplantSizeId = dbo.ImplantSize.ImplantSizeId LEFT OUTER JOIN
                      dbo.ValveType ON dbo.CardiologicalSurgeryValve.ValveTypeId = dbo.ValveType.ValveTypeId LEFT OUTER JOIN
                      dbo.Implant ON dbo.CardiologicalSurgeryValve.ImplantId = dbo.Implant.ImplantId LEFT OUTER JOIN
                      dbo.Prothesis ON dbo.CardiologicalSurgeryValve.ProthesisId = dbo.Prothesis.ProthesisId LEFT OUTER JOIN
                      dbo.ValveSurgeryType ON dbo.CardiologicalSurgeryValve.ValveSurgeryTypeId = dbo.ValveSurgeryType.ValveSurgeryTypeId

GO


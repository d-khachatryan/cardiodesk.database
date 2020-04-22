CREATE VIEW dbo.vwCardiologicalSurgeryProcedure
AS
SELECT     dbo.CardiologicalSurgeryProcedure.CardiologicalSurgeryProcedureId, dbo.CardiologicalSurgeryProcedure.CardiologicalSurgeryId, dbo.CardiologicalSurgeryProcedure.MedicalProcedureId, 
                      dbo.MedicalProcedure.MedicalProcedureName, dbo.CardiologicalSurgeryProcedure.Comment
FROM         dbo.CardiologicalSurgeryProcedure LEFT OUTER JOIN
                      dbo.MedicalProcedure ON dbo.CardiologicalSurgeryProcedure.MedicalProcedureId = dbo.MedicalProcedure.MedicalProcedureId

GO

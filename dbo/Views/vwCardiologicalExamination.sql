CREATE VIEW dbo.vwCardiologicalExamination
AS
SELECT     dbo.CardiologicalExamination.CardiologicalExaminationId, dbo.CardiologicalExamination.ResidentId, dbo.Resident.PatientId, dbo.Resident.ResidentLastName, dbo.Resident.ResidentFirstName, 
                      dbo.Resident.ResidentPatronymicName, dbo.Resident.BirthDate, dbo.CardiologicalExamination.CardiologicalExaminationDate, dbo.CardiologicalExamination.BloodGroupId, 
                      dbo.BloodGroup.BloodGroupName, dbo.CardiologicalExamination.RhFactorId, dbo.RhFactor.RhFactorName, dbo.CardiologicalExamination.T3, dbo.CardiologicalExamination.T4, 
                      dbo.CardiologicalExamination.TTH, dbo.CardiologicalExamination.CRP, dbo.CardiologicalExamination.RF, dbo.CardiologicalExamination.ASLO, dbo.CardiologicalExamination.HIVStatusId, 
                      dbo.HIVStatus.HIVStatusName, dbo.CardiologicalExamination.HBSStatusId, dbo.HBSStatus.HBSStatusName, dbo.CardiologicalExamination.HCVStatusId, dbo.HCVStatus.HCVStatusName, 
                      dbo.CardiologicalExamination.TPHAStatusId, dbo.TPHAStatus.TPHAStatusName, dbo.CardiologicalExamination.BRUStatusId, dbo.BRUStatus.BRUStatusName, dbo.CardiologicalExamination.Hb, 
                      dbo.CardiologicalExamination.RBC, dbo.CardiologicalExamination.FI, dbo.CardiologicalExamination.MeanHbRBC, dbo.CardiologicalExamination.HCT, dbo.CardiologicalExamination.Platelete, 
                      dbo.CardiologicalExamination.Leukocyte, dbo.CardiologicalExamination.Myelocyte, dbo.CardiologicalExamination.Metamyelocyte, dbo.CardiologicalExamination.StabLeukocyte, 
                      dbo.CardiologicalExamination.SegmentedLeukocyte, dbo.CardiologicalExamination.Eosinophil, dbo.CardiologicalExamination.Basophil, dbo.CardiologicalExamination.Lymphocyte, 
                      dbo.CardiologicalExamination.Monocyte, dbo.CardiologicalExamination.ESR, dbo.CardiologicalExamination.ProteinTotal, dbo.CardiologicalExamination.albumin, dbo.CardiologicalExamination.Urea, 
                      dbo.CardiologicalExamination.Creatinine, dbo.CardiologicalExamination.UricAcid, dbo.CardiologicalExamination.Glucose, dbo.CardiologicalExamination.BilirubinTotal, 
                      dbo.CardiologicalExamination.BilirubinDirect, dbo.CardiologicalExamination.ALT, dbo.CardiologicalExamination.AST, dbo.CardiologicalExamination.Potassium, 
                      dbo.CardiologicalExamination.Sodium, dbo.CardiologicalExamination.Calcium, dbo.CardiologicalExamination.AAmilaza, dbo.CardiologicalExamination.CK, dbo.CardiologicalExamination.CKMB, 
                      dbo.CardiologicalExamination.TroponinStatusId, dbo.TroponinStatus.TroponinStatusName, dbo.CardiologicalExamination.Cholesterol, dbo.CardiologicalExamination.Triglyceride, 
                      dbo.CardiologicalExamination.HDL, dbo.CardiologicalExamination.LDL, dbo.CardiologicalExamination.PT, dbo.CardiologicalExamination.INR, dbo.CardiologicalExamination.PI, 
                      dbo.CardiologicalExamination.APTT, dbo.CardiologicalExamination.Fibrinogen, dbo.CardiologicalExamination.UrineProtein, dbo.CardiologicalExamination.UrineLeucocyte, 
                      dbo.CardiologicalExamination.UrineErithrocyte, dbo.CardiologicalExamination.UrineDensity, dbo.CardiologicalExamination.UrineCylinderStatusId, 
                      dbo.UrineCylinderStatus.UrineCylinderStatusName, dbo.CardiologicalExamination.UrineMicroorganismStatusId, dbo.UrineMicroorganismStatus.UrineMicroorganismStatusName, 
                      ISNULL(dbo.Resident.ResidentFirstName, N'-') + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') + N' ' + LEFT(ISNULL(dbo.Resident.ResidentPatronymicName, N'-'), 1) AS ResidentName
FROM         dbo.CardiologicalExamination INNER JOIN
                      dbo.Resident ON dbo.CardiologicalExamination.ResidentId = dbo.Resident.ResidentId LEFT OUTER JOIN
                      dbo.UrineMicroorganismStatus ON dbo.CardiologicalExamination.UrineMicroorganismStatusId = dbo.UrineMicroorganismStatus.UrineMicroorganismStatusId LEFT OUTER JOIN
                      dbo.UrineCylinderStatus ON dbo.CardiologicalExamination.UrineCylinderStatusId = dbo.UrineCylinderStatus.UrineCylinderStatusId LEFT OUTER JOIN
                      dbo.TroponinStatus ON dbo.CardiologicalExamination.TroponinStatusId = dbo.TroponinStatus.TroponinStatusId LEFT OUTER JOIN
                      dbo.BRUStatus ON dbo.CardiologicalExamination.BRUStatusId = dbo.BRUStatus.BRUStatusId LEFT OUTER JOIN
                      dbo.TPHAStatus ON dbo.CardiologicalExamination.TPHAStatusId = dbo.TPHAStatus.TPHAStatusId LEFT OUTER JOIN
                      dbo.HCVStatus ON dbo.CardiologicalExamination.HCVStatusId = dbo.HCVStatus.HCVStatusId LEFT OUTER JOIN
                      dbo.HBSStatus ON dbo.CardiologicalExamination.HBSStatusId = dbo.HBSStatus.HBSStatusId LEFT OUTER JOIN
                      dbo.HIVStatus ON dbo.CardiologicalExamination.HIVStatusId = dbo.HIVStatus.HIVStatusId LEFT OUTER JOIN
                      dbo.RhFactor ON dbo.CardiologicalExamination.RhFactorId = dbo.RhFactor.RhFactorId LEFT OUTER JOIN
                      dbo.BloodGroup ON dbo.CardiologicalExamination.BloodGroupId = dbo.BloodGroup.BloodGroupId

GO


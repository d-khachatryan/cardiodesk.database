CREATE VIEW dbo.vwCardiologicalCase
AS
SELECT     dbo.CardiologicalCase.CardiologicalCaseId, dbo.CardiologicalCase.ResidentId, dbo.Resident.PatientId, dbo.Resident.ResidentLastName, dbo.Resident.ResidentFirstName, 
                      dbo.Resident.ResidentPatronymicName, ISNULL(dbo.Resident.ResidentFirstName, N'-') + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') 
                      + N' ' + LEFT(ISNULL(dbo.Resident.ResidentPatronymicName, N'-'), 1) AS ResidentName, dbo.Resident.BirthDate, dbo.CardiologicalCase.OutPatient, dbo.CardiologicalCase.ConsultationDate, 
                      dbo.CardiologicalCase.InHospital, dbo.CardiologicalCase.StartDate, dbo.CardiologicalCase.DischargeDate, dbo.CardiologicalCase.Duration, dbo.CardiologicalCase.CAD, 
                      dbo.CardiologicalCase.CCSStatus, dbo.CardiologicalCase.CCSId, dbo.CCS.CCSName, dbo.CardiologicalCase.HBCriteriaStatus, dbo.CardiologicalCase.HBCriteriaId, dbo.HBCriteria.HBCriteriaName, 
                      dbo.CardiologicalCase.HITStatus, dbo.CardiologicalCase.HITId, dbo.HIT.HITName, dbo.CardiologicalCase.NYHAStatus, dbo.CardiologicalCase.NYHAId, dbo.NYHA.NYHAName, 
                      dbo.CardiologicalCase.ShockTypeStatus, dbo.CardiologicalCase.ShockTypeId, dbo.ShockType.ShockTypeName, dbo.CardiologicalCase.CATDStatus, dbo.CardiologicalCase.CATDId, 
                      dbo.CATD.CATDName, dbo.CardiologicalCase.CHDStatus, dbo.CardiologicalCase.CHDId, dbo.CHD.CHDName, dbo.CardiologicalCase.HVDStatus, dbo.CardiologicalCase.HVDId, dbo.HVD.HVDName, 
                      dbo.CardiologicalCase.CadiomyopathyStatus, dbo.CardiologicalCase.CadiomyopathyId, dbo.Cadiomyopathy.CadiomyopathyName, dbo.CardiologicalCase.NormalHeart, 
                      dbo.CardiologicalCase.MainDiagnose, dbo.CardiologicalCase.OtherDiseaseId, dbo.TreatmentType.TreatmentTypeName, dbo.CardiologicalCase.TreatmentTypeId, 
                      dbo.CardiologicalCase.ReferralOrganizationId, dbo.ReferralOrganization.ReferralOrganizationName, dbo.CardiologicalCase.DeathStatus, dbo.CardiologicalCase.DeathDate, 
                      dbo.CardiologicalCase.MortalityTypeId, dbo.MortalityType.MortalityTypeName, dbo.CardiologicalCase.DeathCauseId, dbo.DeathCause.DeathCauseName, 
                      dbo.CardiologicalCase.DeathOrganizationId, dbo.DeathOrganization.DeathOrganizationName, dbo.CardiologicalCase.Weight, dbo.CardiologicalCase.Height, dbo.CardiologicalCase.BSA, 
                      dbo.CardiologicalCase.BMI, dbo.CardiologicalCase.SmokingStatusId, dbo.SmokingStatus.SmokingStatusName, dbo.CardiologicalCase.MovementStatusId, 
                      dbo.MovementStatus.MovementStatusName, dbo.CardiologicalCase.AlcoholUsageId, dbo.AlcoholUsage.AlcoholUsageName, dbo.CardiologicalCase.ImmunologicalStatus, 
                      dbo.CardiologicalCase.ImmunologicalStatusId, dbo.ImmunologicalStatus.ImmunologicalStatusName, dbo.CardiologicalCase.CardiologicalInheritance, dbo.CardiologicalCase.ClimaxStatusId, 
                      dbo.ClimaxStatus.ClimaxStatusName, dbo.CardiologicalCase.DiabetesMellitusStatus, dbo.CardiologicalCase.Glucose, dbo.CardiologicalCase.StrokeStatus, dbo.CardiologicalCase.StroceCount, 
                      dbo.CardiologicalCase.StrokeTypeId, dbo.StrokeType.StrokeTypeName, dbo.CardiologicalCase.PulmonaryDiseaseStatus, dbo.CardiologicalCase.PulmonaryDiseaseId, 
                      dbo.PulmonaryDisease.PulmonaryDiseaseName, dbo.CardiologicalCase.COPDId, dbo.COPD.COPDName, dbo.CardiologicalCase.PVDTStatus, dbo.CardiologicalCase.PVDTId, dbo.PVDT.PVDTName, 
                      dbo.CardiologicalCase.RheumatismStatus, dbo.CardiologicalCase.RheumatizmDurationId, dbo.RheumatizmDuration.RheumatizmDurationName, dbo.CardiologicalCase.InfectiousEndocarditisStatus, 
                      dbo.CardiologicalCase.InfectiousEndocarditisId, dbo.InfectiousEndocarditis.InfectiousEndocarditisName, dbo.CardiologicalCase.BloodCholesterolId, dbo.BloodCholesterol.BloodCholesterolName, 
                      dbo.CardiologicalCase.HypertensionStatus, dbo.CardiologicalCase.HypertensionDurationId, dbo.HypertensionDuration.HypertensionDurationName, 
                      dbo.CardiologicalCase.UrogenitalicDiseaseStatus, dbo.CardiologicalCase.UrogenitalicDiseaseId, dbo.UrogenitalicDisease.UrogenitalicDiseaseName, 
                      dbo.CardiologicalCase.GastrointestinalDiseaseStatus, dbo.CardiologicalCase.GastrointestinalDiseaseId, dbo.GastrointestinalDisease.GastrointestinalDiseaseName, 
                      dbo.CardiologicalCase.ImmunosuppressiveTherapyStatus, dbo.CardiologicalCase.ResuscitationStatus, dbo.CardiologicalCase.DentalDiseaseId, dbo.DentalDisease.DentalDiseaseName, 
                      dbo.CardiologicalCase.DiseaseStatusId, dbo.DiseaseStatus.DiseaseStatusName, dbo.CardiologicalCase.SmokingTypeId, dbo.SmokingType.SmokingTypeName, 
                      dbo.OtherDisease.OtherDiseaseName
FROM         dbo.CardiologicalCase LEFT OUTER JOIN
                      dbo.OtherDisease ON dbo.CardiologicalCase.OtherDiseaseId = dbo.OtherDisease.OtherDiseaseId LEFT OUTER JOIN
                      dbo.SmokingType ON dbo.CardiologicalCase.SmokingTypeId = dbo.SmokingType.SmokingTypeId LEFT OUTER JOIN
                      dbo.DiseaseStatus ON dbo.CardiologicalCase.DiseaseStatusId = dbo.DiseaseStatus.DiseaseStatusId LEFT OUTER JOIN
                      dbo.GastrointestinalDisease ON dbo.CardiologicalCase.GastrointestinalDiseaseId = dbo.GastrointestinalDisease.GastrointestinalDiseaseId LEFT OUTER JOIN
                      dbo.DentalDisease ON dbo.CardiologicalCase.DentalDiseaseId = dbo.DentalDisease.DentalDiseaseId LEFT OUTER JOIN
                      dbo.UrogenitalicDisease ON dbo.CardiologicalCase.UrogenitalicDiseaseId = dbo.UrogenitalicDisease.UrogenitalicDiseaseId LEFT OUTER JOIN
                      dbo.HypertensionDuration ON dbo.CardiologicalCase.HypertensionDurationId = dbo.HypertensionDuration.HypertensionDurationId LEFT OUTER JOIN
                      dbo.BloodCholesterol ON dbo.CardiologicalCase.BloodCholesterolId = dbo.BloodCholesterol.BloodCholesterolId LEFT OUTER JOIN
                      dbo.InfectiousEndocarditis ON dbo.CardiologicalCase.InfectiousEndocarditisId = dbo.InfectiousEndocarditis.InfectiousEndocarditisId LEFT OUTER JOIN
                      dbo.RheumatizmDuration ON dbo.CardiologicalCase.RheumatizmDurationId = dbo.RheumatizmDuration.RheumatizmDurationId LEFT OUTER JOIN
                      dbo.COPD ON dbo.CardiologicalCase.COPDId = dbo.COPD.COPDId LEFT OUTER JOIN
                      dbo.PVDT ON dbo.CardiologicalCase.PVDTId = dbo.PVDT.PVDTId LEFT OUTER JOIN
                      dbo.PulmonaryDisease ON dbo.CardiologicalCase.PulmonaryDiseaseId = dbo.PulmonaryDisease.PulmonaryDiseaseId LEFT OUTER JOIN
                      dbo.StrokeType ON dbo.CardiologicalCase.StrokeTypeId = dbo.StrokeType.StrokeTypeId LEFT OUTER JOIN
                      dbo.ClimaxStatus ON dbo.CardiologicalCase.ClimaxStatusId = dbo.ClimaxStatus.ClimaxStatusId LEFT OUTER JOIN
                      dbo.ImmunologicalStatus ON dbo.CardiologicalCase.ImmunologicalStatusId = dbo.ImmunologicalStatus.ImmunologicalStatusId LEFT OUTER JOIN
                      dbo.AlcoholUsage ON dbo.CardiologicalCase.AlcoholUsageId = dbo.AlcoholUsage.AlcoholUsageId LEFT OUTER JOIN
                      dbo.MovementStatus ON dbo.CardiologicalCase.MovementStatusId = dbo.MovementStatus.MovementStatusId LEFT OUTER JOIN
                      dbo.SmokingStatus ON dbo.CardiologicalCase.SmokingStatusId = dbo.SmokingStatus.SmokingStatusId LEFT OUTER JOIN
                      dbo.DeathOrganization ON dbo.CardiologicalCase.DeathOrganizationId = dbo.DeathOrganization.DeathOrganizationId LEFT OUTER JOIN
                      dbo.DeathCause ON dbo.CardiologicalCase.DeathCauseId = dbo.DeathCause.DeathCauseId LEFT OUTER JOIN
                      dbo.MortalityType ON dbo.CardiologicalCase.MortalityTypeId = dbo.MortalityType.MortalityTypeId LEFT OUTER JOIN
                      dbo.ReferralOrganization ON dbo.CardiologicalCase.ReferralOrganizationId = dbo.ReferralOrganization.ReferralOrganizationId LEFT OUTER JOIN
                      dbo.Resident ON dbo.CardiologicalCase.ResidentId = dbo.Resident.ResidentId LEFT OUTER JOIN
                      dbo.TreatmentType ON dbo.CardiologicalCase.TreatmentTypeId = dbo.TreatmentType.TreatmentTypeId LEFT OUTER JOIN
                      dbo.Cadiomyopathy ON dbo.CardiologicalCase.CadiomyopathyId = dbo.Cadiomyopathy.CadiomyopathyId LEFT OUTER JOIN
                      dbo.HVD ON dbo.CardiologicalCase.HVDId = dbo.HVD.HVDId LEFT OUTER JOIN
                      dbo.CHD ON dbo.CardiologicalCase.CHDId = dbo.CHD.CHDId LEFT OUTER JOIN
                      dbo.CATD ON dbo.CardiologicalCase.CATDId = dbo.CATD.CATDId LEFT OUTER JOIN
                      dbo.ShockType ON dbo.CardiologicalCase.ShockTypeId = dbo.ShockType.ShockTypeId LEFT OUTER JOIN
                      dbo.NYHA ON dbo.CardiologicalCase.NYHAId = dbo.NYHA.NYHAId LEFT OUTER JOIN
                      dbo.HIT ON dbo.CardiologicalCase.HITId = dbo.HIT.HITId LEFT OUTER JOIN
                      dbo.HBCriteria ON dbo.CardiologicalCase.HBCriteriaId = dbo.HBCriteria.HBCriteriaId LEFT OUTER JOIN
                      dbo.CCS ON dbo.CardiologicalCase.CCSId = dbo.CCS.CCSId

GO

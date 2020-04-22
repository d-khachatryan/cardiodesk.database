CREATE VIEW dbo.vwCardiologicalSurgery
AS
SELECT     dbo.CardiologicalSurgery.CardiologicalSurgeryId, dbo.CardiologicalSurgery.ResidentId, dbo.Resident.PatientId, dbo.Resident.ResidentLastName, dbo.Resident.ResidentFirstName, 
                      dbo.Resident.ResidentPatronymicName, dbo.Resident.BirthDate, dbo.CardiologicalSurgery.CardiologicalSurgeryDate, dbo.CardiologicalSurgery.DiseaseStatusId, 
                      dbo.DiseaseStatus.DiseaseStatusName, dbo.CardiologicalSurgery.CPB, dbo.CardiologicalSurgery.EuroSCORE, dbo.CardiologicalSurgery.CABGX, dbo.CardiologicalSurgery.BypassB1Id, 
                      Bypass_1.BypassName AS B1BypassName, dbo.CardiologicalSurgery.SegmentB1Id, Segment_1.SegmentName AS B1SegmentName, dbo.CardiologicalSurgery.BypassB2Id, 
                      Bypass_2.BypassName AS B2BypassName, dbo.CardiologicalSurgery.SegmentB2Id, Segment_2.SegmentName AS B2SegmentName, dbo.CardiologicalSurgery.BypassB3Id, 
                      Bypass_3.BypassName AS B3BypasstName, dbo.CardiologicalSurgery.SegmentB3Id, Segment_3.SegmentName AS B3SegmentName, dbo.CardiologicalSurgery.BypassC1Id, 
                      Bypass_4.BypassName AS C1BypasstName, dbo.CardiologicalSurgery.SegmentC1Id, Segment_4.SegmentName AS C1SegmentName, dbo.CardiologicalSurgery.SegmentD1Id, 
                      Segment_5.SegmentName AS D1SegmentName, dbo.CardiologicalSurgery.BypassC2Id, Bypass_5.BypassName AS C2BypasstName, dbo.CardiologicalSurgery.SegmentC2Id, 
                      Segment_6.SegmentName AS C2SegmentName, dbo.CardiologicalSurgery.SegmentD2Id, Segment_7.SegmentName AS D2SegmentName, dbo.CardiologicalSurgery.BypassC3Id, 
                      dbo.Bypass.BypassName AS C3BypasstName, dbo.CardiologicalSurgery.SegmentC3Id, Segment_8.SegmentName AS C3SegmentName, dbo.CardiologicalSurgery.SegmentD3Id, 
                      dbo.Segment.SegmentName AS D3SegmentName, dbo.CardiologicalSurgery.LFL, dbo.CardiologicalSurgery.HFL, dbo.CardiologicalSurgery.NaCl, dbo.CardiologicalSurgery.GEL, 
                      dbo.CardiologicalSurgery.Mannitol, dbo.CardiologicalSurgery.BicarbonateTypeId, dbo.BicarbonateType.BicarbonateTypeName, dbo.CardiologicalSurgery.NaHCO3, 
                      dbo.CardiologicalSurgery.Heparin1, dbo.CardiologicalSurgery.CaCl2, dbo.CardiologicalSurgery.RBCCPB, dbo.CardiologicalSurgery.FFPCPB, dbo.CardiologicalSurgery.LiquidId, 
                      dbo.CardiologicalSurgery.Other1, dbo.CardiologicalSurgery.PrimaryVolume, dbo.CardiologicalSurgery.Na, dbo.CardiologicalSurgery.Gelofusin, dbo.CardiologicalSurgery.Man, 
                      dbo.CardiologicalSurgery.NaHCO, dbo.CardiologicalSurgery.Heparin2, dbo.CardiologicalSurgery.CaCl, dbo.CardiologicalSurgery.R, dbo.CardiologicalSurgery.F, dbo.CardiologicalSurgery.Other2, 
                      dbo.CardiologicalSurgery.TotalVolume, dbo.CardiologicalSurgery.ResidualVolume, dbo.CardiologicalSurgery.InPatientVolume, dbo.CardiologicalSurgery.SkinIncisionStartTime, 
                      dbo.CardiologicalSurgery.SkinIncisionCloseTime, dbo.CardiologicalSurgery.TotalOperationTime, dbo.CardiologicalSurgery.CrossClampTime, dbo.CardiologicalSurgery.BypassTime, 
                      dbo.CardiologicalSurgery.CardioplegiaTypeId, dbo.CardioplegiaType.CardioplegiaTypeName, dbo.CardiologicalSurgery.AnesthesiaTime, dbo.CardiologicalSurgery.RBCId, 
                      BloodProduct_1.BloodProductName AS RBCBloodProductName, dbo.CardiologicalSurgery.FFPId, BloodProduct_2.BloodProductName AS FFPBloodProductName, dbo.CardiologicalSurgery.PLTId, 
                      dbo.BloodProduct.BloodProductName AS PLTBloodProductName, dbo.CardiologicalSurgery.InotropicSupportId, dbo.InotropicSupport.InotropicSupportName, 
                      dbo.CardiologicalSurgery.BloodLossVolume, dbo.CardiologicalSurgery.SkinTemperature, dbo.CardiologicalSurgery.ExtubatedPOD, dbo.CardiologicalSurgery.InitialHoursVentilated, 
                      dbo.CardiologicalSurgery.ReIntubation, dbo.CardiologicalSurgery.AdditionalHoursVentilated, dbo.CardiologicalSurgery.TotalHoursVentilated, dbo.CardiologicalSurgery.Hb, 
                      dbo.CardiologicalSurgery.Hct, dbo.CardiologicalSurgery.Platelet, dbo.CardiologicalSurgery.Creatinine, dbo.CardiologicalSurgery.APTT, dbo.CardiologicalSurgery.Sodium, 
                      dbo.CardiologicalSurgery.Potassium, dbo.CardiologicalSurgery.PH, dbo.CardiologicalSurgery.PaO2, dbo.CardiologicalSurgery.PaCO2, dbo.CardiologicalSurgery.ICULength, 
                      dbo.CardiologicalSurgery.DischargeDate, dbo.CardiologicalSurgery.CSDLength, dbo.CardiologicalSurgery.Mortality, dbo.CardiologicalSurgery.DeathDate, dbo.CardiologicalSurgery.DeathCauseId, 
                      dbo.DeathCause.DeathCauseName, dbo.CardiologicalSurgery.Comment, dbo.Liquid.LiquidName, ISNULL(dbo.Resident.ResidentFirstName, N'-') + N' ' + ISNULL(dbo.Resident.ResidentLastName, 
                      N'-') + N' ' + LEFT(ISNULL(dbo.Resident.ResidentPatronymicName, N'-'), 1) AS ResidentName
FROM         dbo.CardiologicalSurgery LEFT OUTER JOIN
                      dbo.Liquid ON dbo.CardiologicalSurgery.LiquidId = dbo.Liquid.LiquidId LEFT OUTER JOIN
                      dbo.DeathCause ON dbo.CardiologicalSurgery.DeathCauseId = dbo.DeathCause.DeathCauseId LEFT OUTER JOIN
                      dbo.InotropicSupport ON dbo.CardiologicalSurgery.InotropicSupportId = dbo.InotropicSupport.InotropicSupportId LEFT OUTER JOIN
                      dbo.BloodProduct ON dbo.CardiologicalSurgery.PLTId = dbo.BloodProduct.BloodProductId LEFT OUTER JOIN
                      dbo.BloodProduct AS BloodProduct_2 ON dbo.CardiologicalSurgery.FFPId = BloodProduct_2.BloodProductId LEFT OUTER JOIN
                      dbo.BloodProduct AS BloodProduct_1 ON dbo.CardiologicalSurgery.RBCId = BloodProduct_1.BloodProductId LEFT OUTER JOIN
                      dbo.CardioplegiaType ON dbo.CardiologicalSurgery.CardioplegiaTypeId = dbo.CardioplegiaType.CardioplegiaTypeId LEFT OUTER JOIN
                      dbo.BicarbonateType ON dbo.CardiologicalSurgery.BicarbonateTypeId = dbo.BicarbonateType.BicarbonateTypeId LEFT OUTER JOIN
                      dbo.Segment ON dbo.CardiologicalSurgery.SegmentD3Id = dbo.Segment.SegmentId LEFT OUTER JOIN
                      dbo.Segment AS Segment_8 ON dbo.CardiologicalSurgery.SegmentC3Id = Segment_8.SegmentId LEFT OUTER JOIN
                      dbo.Bypass ON dbo.CardiologicalSurgery.BypassC3Id = dbo.Bypass.BypassId LEFT OUTER JOIN
                      dbo.Segment AS Segment_7 ON dbo.CardiologicalSurgery.SegmentD2Id = Segment_7.SegmentId LEFT OUTER JOIN
                      dbo.Segment AS Segment_6 ON dbo.CardiologicalSurgery.SegmentC2Id = Segment_6.SegmentId LEFT OUTER JOIN
                      dbo.Bypass AS Bypass_5 ON dbo.CardiologicalSurgery.BypassC2Id = Bypass_5.BypassId LEFT OUTER JOIN
                      dbo.Segment AS Segment_5 ON dbo.CardiologicalSurgery.SegmentD1Id = Segment_5.SegmentId LEFT OUTER JOIN
                      dbo.Segment AS Segment_4 ON dbo.CardiologicalSurgery.SegmentC1Id = Segment_4.SegmentId LEFT OUTER JOIN
                      dbo.Bypass AS Bypass_4 ON dbo.CardiologicalSurgery.BypassC1Id = Bypass_4.BypassId LEFT OUTER JOIN
                      dbo.Segment AS Segment_3 ON dbo.CardiologicalSurgery.SegmentB3Id = Segment_3.SegmentId LEFT OUTER JOIN
                      dbo.Bypass AS Bypass_3 ON dbo.CardiologicalSurgery.BypassB3Id = Bypass_3.BypassId LEFT OUTER JOIN
                      dbo.Segment AS Segment_2 ON dbo.CardiologicalSurgery.SegmentB2Id = Segment_2.SegmentId LEFT OUTER JOIN
                      dbo.Bypass AS Bypass_2 ON dbo.CardiologicalSurgery.BypassB2Id = Bypass_2.BypassId LEFT OUTER JOIN
                      dbo.Segment AS Segment_1 ON dbo.CardiologicalSurgery.SegmentB1Id = Segment_1.SegmentId LEFT OUTER JOIN
                      dbo.Bypass AS Bypass_1 ON dbo.CardiologicalSurgery.BypassB1Id = Bypass_1.BypassId LEFT OUTER JOIN
                      dbo.DiseaseStatus ON dbo.CardiologicalSurgery.DiseaseStatusId = dbo.DiseaseStatus.DiseaseStatusId LEFT OUTER JOIN
                      dbo.Resident ON dbo.CardiologicalSurgery.ResidentId = dbo.Resident.ResidentId

GO


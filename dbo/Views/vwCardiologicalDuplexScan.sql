CREATE VIEW dbo.vwCardiologicalDuplexScan
AS
SELECT     dbo.CardiologicalDuplexScan.CardiologicalDuplexScanId, dbo.Resident.PatientId, dbo.Resident.ResidentLastName, dbo.Resident.ResidentFirstName, dbo.Resident.ResidentPatronymicName, 
                      dbo.Resident.BirthDate, dbo.CardiologicalDuplexScan.ResidentId, dbo.CardiologicalDuplexScan.CardiologicalDuplexScanDate, dbo.CardiologicalDuplexScan.RCAStenosisId, 
                      DuplexStenosis_1.DuplexStenosisName AS RCAStenosisName, dbo.CardiologicalDuplexScan.RCAStenosisDM, dbo.CardiologicalDuplexScan.RCAStenosisPC, 
                      dbo.CardiologicalDuplexScan.LSAStenosisId, DuplexStenosis_2.DuplexStenosisName AS LSAStenosisName, dbo.CardiologicalDuplexScan.LSAStenosisDM, 
                      dbo.CardiologicalDuplexScan.LSAStenosisPC, dbo.CardiologicalDuplexScan.RCCStenosisId, DuplexStenosis_3.DuplexStenosisName AS RCCStenosisName, 
                      dbo.CardiologicalDuplexScan.RCCStenosisDM, dbo.CardiologicalDuplexScan.RCCStenosisPC, dbo.CardiologicalDuplexScan.LCCStenosisId, 
                      DuplexStenosis_4.DuplexStenosisName AS LCCStenosisName, dbo.CardiologicalDuplexScan.LCCStenosisDM, dbo.CardiologicalDuplexScan.LCCStenosisPC, 
                      dbo.CardiologicalDuplexScan.RCIStenosisId, DuplexStenosis_5.DuplexStenosisName AS RCIStenosisName, dbo.CardiologicalDuplexScan.RCIStenosisDM, 
                      dbo.CardiologicalDuplexScan.RCIStenosisPC, dbo.CardiologicalDuplexScan.LCIStenosisId, DuplexStenosis_6.DuplexStenosisName AS LCIStenosisName, 
                      dbo.CardiologicalDuplexScan.LCIStenosisDM, dbo.CardiologicalDuplexScan.LCIStenosisPC, dbo.CardiologicalDuplexScan.RCEStenosisId, 
                      DuplexStenosis_9.DuplexStenosisName AS RCEStenosisName, dbo.CardiologicalDuplexScan.RCEStenosisDM, dbo.CardiologicalDuplexScan.RCEStenosisPC, 
                      dbo.CardiologicalDuplexScan.LCEStenosisId, DuplexStenosis_7.DuplexStenosisName AS LCEStenosisName, dbo.CardiologicalDuplexScan.LCEStenosisDM, 
                      dbo.CardiologicalDuplexScan.LCEStenosisPC, dbo.CardiologicalDuplexScan.RVAStenosisId, DuplexStenosis_8.DuplexStenosisName AS RVAStenosisName, 
                      dbo.CardiologicalDuplexScan.RVAStenosisDM, dbo.CardiologicalDuplexScan.RVAStenosisPC, dbo.CardiologicalDuplexScan.LVAStenosisId, 
                      dbo.DuplexStenosis.DuplexStenosisName AS LVAStenosisName, dbo.CardiologicalDuplexScan.LVAStenosisDM, dbo.CardiologicalDuplexScan.LVAStenosisPC, 
                      ISNULL(dbo.Resident.ResidentFirstName, N'-') + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') + N' ' + LEFT(ISNULL(dbo.Resident.ResidentPatronymicName, N'-'), 1) AS ResidentName
FROM         dbo.CardiologicalDuplexScan LEFT OUTER JOIN
                      dbo.DuplexStenosis ON dbo.CardiologicalDuplexScan.LVAStenosisId = dbo.DuplexStenosis.DuplexStenosisId LEFT OUTER JOIN
                      dbo.DuplexStenosis AS DuplexStenosis_8 ON dbo.CardiologicalDuplexScan.RVAStenosisId = DuplexStenosis_8.DuplexStenosisId LEFT OUTER JOIN
                      dbo.DuplexStenosis AS DuplexStenosis_7 ON dbo.CardiologicalDuplexScan.LCEStenosisId = DuplexStenosis_7.DuplexStenosisId LEFT OUTER JOIN
                      dbo.DuplexStenosis AS DuplexStenosis_9 ON dbo.CardiologicalDuplexScan.RCEStenosisId = DuplexStenosis_9.DuplexStenosisId LEFT OUTER JOIN
                      dbo.DuplexStenosis AS DuplexStenosis_6 ON dbo.CardiologicalDuplexScan.LCIStenosisId = DuplexStenosis_6.DuplexStenosisId LEFT OUTER JOIN
                      dbo.DuplexStenosis AS DuplexStenosis_5 ON dbo.CardiologicalDuplexScan.RCIStenosisId = DuplexStenosis_5.DuplexStenosisId LEFT OUTER JOIN
                      dbo.DuplexStenosis AS DuplexStenosis_4 ON dbo.CardiologicalDuplexScan.LCCStenosisId = DuplexStenosis_4.DuplexStenosisId LEFT OUTER JOIN
                      dbo.DuplexStenosis AS DuplexStenosis_3 ON dbo.CardiologicalDuplexScan.RCCStenosisId = DuplexStenosis_3.DuplexStenosisId LEFT OUTER JOIN
                      dbo.DuplexStenosis AS DuplexStenosis_2 ON dbo.CardiologicalDuplexScan.LSAStenosisId = DuplexStenosis_2.DuplexStenosisId LEFT OUTER JOIN
                      dbo.DuplexStenosis AS DuplexStenosis_1 ON dbo.CardiologicalDuplexScan.RCAStenosisId = DuplexStenosis_1.DuplexStenosisId LEFT OUTER JOIN
                      dbo.Resident ON dbo.CardiologicalDuplexScan.ResidentId = dbo.Resident.ResidentId

GO

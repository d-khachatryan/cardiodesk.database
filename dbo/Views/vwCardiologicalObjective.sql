CREATE VIEW dbo.vwCardiologicalObjective
AS
SELECT     dbo.CardiologicalObjective.CardiologicalObjectiveId, dbo.CardiologicalObjective.ResidentId, dbo.Resident.PatientId, dbo.Resident.ResidentLastName, dbo.Resident.ResidentFirstName, 
                      dbo.Resident.ResidentPatronymicName, dbo.Resident.BirthDate, dbo.CardiologicalObjective.CardiologicalObjectiveDate, dbo.CardiologicalObjective.Temperature, dbo.CardiologicalObjective.Pulse, 
                      dbo.CardiologicalObjective.RNIBP, dbo.CardiologicalObjective.LNIBP, dbo.CardiologicalObjective.LungId, dbo.Lung.LungName, dbo.CardiologicalObjective.HeartSoundTypeId, 
                      dbo.HeartSoundType.HeartSoundTypeName, dbo.CardiologicalObjective.HeartMurmurTypeId, dbo.HeartMurmurType.HeartMurmurTypeName, dbo.CardiologicalObjective.RCBId, 
                      CaroticBruit_1.CaroticBruitName AS RCBBruitName, dbo.CardiologicalObjective.LCBId, dbo.CaroticBruit.CaroticBruitName AS LCBBruitName, dbo.CardiologicalObjective.AbdominalStatusId, 
                      dbo.AbdominalStatus.AbdominalStatusName, dbo.CardiologicalObjective.LiverId, dbo.Liver.LiverName, dbo.CardiologicalObjective.RRAId, 
                      ArteriaStatus_1.ArteriaStatusName AS RRAArteriaStatusName, dbo.CardiologicalObjective.LRAId, ArteriaStatus_2.ArteriaStatusName AS LRAArteriaStatusName, dbo.CardiologicalObjective.RADPId, 
                      ArteriaStatus_3.ArteriaStatusName AS RADArteriaStatusName, dbo.CardiologicalObjective.LADPId, dbo.ArteriaStatus.ArteriaStatusName AS LADArteriaStatusName, 
                      dbo.CardiologicalObjective.PeripherialStatusId, dbo.PeripherialStatus.PeripherialStatusName, dbo.CardiologicalObjective.PhysicianId, dbo.Physician.PhysicianName, 
                      ISNULL(dbo.Resident.ResidentFirstName, N'-') + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') + N' ' + LEFT(ISNULL(dbo.Resident.ResidentPatronymicName, N'-'), 1) AS ResidentName
FROM         dbo.CardiologicalObjective LEFT OUTER JOIN
                      dbo.Physician ON dbo.CardiologicalObjective.PhysicianId = dbo.Physician.PhysicianId LEFT OUTER JOIN
                      dbo.PeripherialStatus ON dbo.CardiologicalObjective.PeripherialStatusId = dbo.PeripherialStatus.PeripherialStatusId LEFT OUTER JOIN
                      dbo.ArteriaStatus ON dbo.CardiologicalObjective.LADPId = dbo.ArteriaStatus.ArteriaStatusId LEFT OUTER JOIN
                      dbo.ArteriaStatus AS ArteriaStatus_3 ON dbo.CardiologicalObjective.RADPId = ArteriaStatus_3.ArteriaStatusId LEFT OUTER JOIN
                      dbo.ArteriaStatus AS ArteriaStatus_2 ON dbo.CardiologicalObjective.LRAId = ArteriaStatus_2.ArteriaStatusId LEFT OUTER JOIN
                      dbo.ArteriaStatus AS ArteriaStatus_1 ON dbo.CardiologicalObjective.RRAId = ArteriaStatus_1.ArteriaStatusId LEFT OUTER JOIN
                      dbo.Liver ON dbo.CardiologicalObjective.LiverId = dbo.Liver.LiverId LEFT OUTER JOIN
                      dbo.AbdominalStatus ON dbo.CardiologicalObjective.AbdominalStatusId = dbo.AbdominalStatus.AbdominalStatusId LEFT OUTER JOIN
                      dbo.CaroticBruit ON dbo.CardiologicalObjective.LCBId = dbo.CaroticBruit.CaroticBruitId LEFT OUTER JOIN
                      dbo.CaroticBruit AS CaroticBruit_1 ON dbo.CardiologicalObjective.RCBId = CaroticBruit_1.CaroticBruitId LEFT OUTER JOIN
                      dbo.HeartMurmurType ON dbo.CardiologicalObjective.HeartMurmurTypeId = dbo.HeartMurmurType.HeartMurmurTypeId LEFT OUTER JOIN
                      dbo.HeartSoundType ON dbo.CardiologicalObjective.HeartSoundTypeId = dbo.HeartSoundType.HeartSoundTypeId LEFT OUTER JOIN
                      dbo.Lung ON dbo.CardiologicalObjective.LungId = dbo.Lung.LungId LEFT OUTER JOIN
                      dbo.Resident ON dbo.CardiologicalObjective.ResidentId = dbo.Resident.ResidentId

GO

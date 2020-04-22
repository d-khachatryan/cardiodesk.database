
CREATE VIEW [dbo].[vwResidentInfo]
AS
SELECT     dbo.Resident.ResidentId, ISNULL(STR(dbo.Resident.PatientId), N'-') + N' - ' + ISNULL(dbo.Resident.ResidentFirstName, N'-') + N' ' + ISNULL(dbo.Resident.ResidentLastName, N'-') 
                      + N' ' + ISNULL(dbo.Resident.ResidentPatronymicName, N'-')  + N' ' + ISNULL(CONVERT(VARCHAR(10),dbo.Resident.BirthDate,110), N'-') AS ResidentName
FROM         dbo.Resident


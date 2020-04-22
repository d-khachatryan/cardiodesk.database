CREATE VIEW dbo.vwCardiologicalSurgeryDrug
AS
SELECT     dbo.CardiologicalSurgeryDrug.CardiologicalSurgeryDrugId, dbo.CardiologicalSurgeryDrug.CardiologicalSurgeryId, dbo.Drug.DrugName, dbo.CardiologicalSurgeryDrug.DrugId, 
                      dbo.CardiologicalSurgeryDrug.DrugFrequencyId, dbo.DrugFrequency.DrugFrequencyName, dbo.CardiologicalSurgeryDrug.Duration
FROM         dbo.CardiologicalSurgeryDrug LEFT OUTER JOIN
                      dbo.DrugFrequency ON dbo.CardiologicalSurgeryDrug.DrugFrequencyId = dbo.DrugFrequency.DrugFrequencyId LEFT OUTER JOIN
                      dbo.Drug ON dbo.CardiologicalSurgeryDrug.DrugId = dbo.Drug.DrugId

GO

CREATE VIEW dbo.vwCardiologicalCaseDrug
AS
SELECT     dbo.CardiologicalCaseDrug.CardiologicalCaseDrugId, dbo.CardiologicalCaseDrug.CardiologicalCaseId, dbo.Drug.DrugName, dbo.CardiologicalCaseDrug.DrugId, 
                      dbo.CardiologicalCaseDrug.DrugFrequencyId, dbo.DrugFrequency.DrugFrequencyName, dbo.CardiologicalCaseDrug.Duration
FROM         dbo.CardiologicalCaseDrug LEFT OUTER JOIN
                      dbo.DrugFrequency ON dbo.CardiologicalCaseDrug.DrugFrequencyId = dbo.DrugFrequency.DrugFrequencyId LEFT OUTER JOIN
                      dbo.Drug ON dbo.CardiologicalCaseDrug.DrugId = dbo.Drug.DrugId

GO
